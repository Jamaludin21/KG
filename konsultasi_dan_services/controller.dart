import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:kampus_gratis/services/data_Repository.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speech_to_text/speech_to_text.dart' as stts;

class Controller extends GetxController {
  Rx<FocusNode> focusNodeSearch = FocusNode().obs;
  Rx<FocusNode> focusNodeMessage = FocusNode().obs;
  var isShowEmoji = false.obs;
  var isButtonActive = false.obs;
  Rx<TextEditingController> search = TextEditingController().obs;
  Rx<TextEditingController> message = TextEditingController().obs;
  final formKey = GlobalKey<FormState>();
  var isListening = false.obs;
  var speechToText = stts.SpeechToText().obs;
  // var isKeyboardActive = false.obs();
  // var isAddActive = false.obs;
  ReceivePort _port = ReceivePort();

  Future download(String url) async {
    var status = await Permission.storage.request();
    if (status.isGranted) {
      final baseStorage = await getExternalStorageDirectory();
      await FlutterDownloader.enqueue(
        url: url,
        savedDir: baseStorage!.path,
        showNotification: true,
        openFileFromNotification: true,
      );
    }
  }

  void addEmojiToChat(Emoji emoji) {
    message.value.text = message.value.text + emoji.emoji;
  }

  void deleteEmoji() {
    message.value.text =
        message.value.text.substring(0, message.value.text.length - 2);
  }

  // void keyboard() {
  //   focusNodeMessage.value.requestFocus(isShowEmoji);
  // }

  void listen() async {
    if (!isListening.value) {
      var available = await speechToText.value.initialize(
        onStatus: (status) => print("$status"),
        onError: (errorNotification) => print("$errorNotification"),
      );
      if (available) {
        isListening.value = true;
        speechToText.value.listen(
          onResult: (result) => message.value.text = result.recognizedWords,
        );
      }
    } else {
      isListening.value = false;
      speechToText.value.stop();
    }
    // return listen();
  }

  void onInit() async {
    super.onInit();
    speechToText.value = stts.SpeechToText();
    focusNodeSearch.value = FocusNode();
    focusNodeMessage.value = FocusNode();
    search.value = TextEditingController();
    message.value = TextEditingController();
    message.value.addListener(() {
      final isButtonActive = message.value.text.isNotEmpty;
      this.isButtonActive.value = isButtonActive;
      // final isAddActive = message.value.text.isNotEmpty;
      // this.isAddActive.value = isAddActive;
    });
    focusNodeMessage.value.addListener(() {
      if (focusNodeMessage.value.hasFocus) {
        isShowEmoji.value = false;
      }
    });
    IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
    _port.listen((dynamic data) {
      String id = data[0];
      DownloadTaskStatus status = data[1];
      int progress = data[2];
      if (status == DownloadTaskStatus.complete) {
        print('Download complete');
      }
    });

    FlutterDownloader.registerCallback(downloadCallback);
    // listen();
  }

  @override
  void onClose() {
    // Clean up the focus node when the Form is disposed.
    focusNodeSearch.value.dispose();
    focusNodeMessage.value.dispose();
    search.value.dispose();
    message.value.dispose();
    IsolateNameServer.removePortNameMapping('downloader_send_port');
    super.onClose();
  }

  static void downloadCallback(
      String id, DownloadTaskStatus status, int progress) {
    final SendPort? send =
        IsolateNameServer.lookupPortByName('downloader_send_port');
    send!.send([id, status, progress]);
  }
}
