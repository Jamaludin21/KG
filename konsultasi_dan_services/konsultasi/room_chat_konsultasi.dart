import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kampus_gratis/constants.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/controller.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/konsultasi/send_chat_konsultasi.dart';

class RoomChatKonsultasi extends StatelessWidget {
  RoomChatKonsultasi({Key? key}) : super(key: key);
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: GestureDetector(
        onTap: (() {
          FocusScope.of(context).unfocus();
          if (controller.isShowEmoji.isTrue)
            controller.isShowEmoji.value = false;
          print('di klik');
        }),
        child: Scaffold(
          appBar: AppBar(
            // backgroundColor: AppColor.mainlightBlue,
            leadingWidth: 100,
            leading: InkWell(
              onTap: (() {
                Get.back();
                print('di klik');
              }),
              borderRadius: BorderRadius.circular(100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_back_ios,
                    // color: Colors.black,
                  ),
                  SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: CircleAvatar(
                      radius: 25,
                      // backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/icons/icon_person.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // title: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text('Pembimbing Akademik'),
            //   ],
            // ),
            title: Text(
              'Pembimbing Akademik',
              // style: TextStyle(color: Colors.black),
            ),
            centerTitle: false,
          ),
          body: Obx(
            () => WillPopScope(
              onWillPop: () {
                if (controller.isShowEmoji.isTrue) {
                  controller.isShowEmoji.value = false;
                } else {
                  Navigator.pop(context);
                }
                return Future.value(false);
              },
              child: Container(
                height: size.height,
                width: size.width,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          // SizedBox(height: 10),
                          ItemChat(
                            isSender: true,
                          ),
                          ItemChat(
                            isSender: false,
                          ),
                        ],
                      ),
                    ),
                    SendChatKonsultasi(),
                    (controller.isShowEmoji.isTrue)
                        ? Container(
                            height: 325,
                            child: EmojiPicker(
                              onEmojiSelected: (category, emoji) {
                                controller.addEmojiToChat(emoji);
                              },
                              onBackspacePressed: () {
                                controller.deleteEmoji();
                              },
                              config: Config(
                                backspaceColor: AppColor.mainlightBlue,
                                columns: 7,
                                emojiSizeMax: 32.0,
                                verticalSpacing: 0,
                                horizontalSpacing: 0,
                                initCategory: Category.RECENT,
                                bgColor: Color(0xFFF2F2F2),
                                indicatorColor: AppColor.mainlightBlue,
                                iconColor: Colors.grey,
                                iconColorSelected: AppColor.mainlightBlue,
                                progressIndicatorColor: AppColor.mainlightBlue,
                                showRecentsTab: true,
                                recentsLimit: 28,
                                noRecentsText: "No Recents",
                                noRecentsStyle: const TextStyle(
                                    fontSize: 20, color: Colors.black26),
                                categoryIcons: const CategoryIcons(),
                                buttonMode: ButtonMode.MATERIAL,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ItemChat extends StatelessWidget {
  const ItemChat({Key? key, required this.isSender}) : super(key: key);
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: isSender
                  ? BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
            ),
            padding: EdgeInsets.all(15),
            child: Text(
              "Assalamualaikum",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text("17.20"),
        ],
      ),
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
    );
  }
}
