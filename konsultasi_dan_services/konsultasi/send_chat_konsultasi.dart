import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kampus_gratis/constants.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/controller.dart';

class SendChatKonsultasi extends StatelessWidget {
  SendChatKonsultasi({Key? key}) : super(key: key);
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Form(
        key: controller.formKey,
        child: Container(
          margin: EdgeInsets.only(
            bottom: controller.isShowEmoji.isTrue
                ? 5
                : context.mediaQueryPadding.bottom,
          ),
          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                    minLines: 1,
                    autocorrect: false,
                    focusNode: controller.focusNodeMessage.value,
                    decoration: InputDecoration(
                      prefixIcon: (controller.isShowEmoji.value == true)
                          ? IconButton(
                              onPressed: (() {
                                controller.focusNodeMessage.value
                                    .requestFocus();
                              }),
                              // icon: Icon(Icons.emoji_emotions_outlined),
                              icon: Icon(Icons.keyboard_alt_outlined),
                            )
                          : IconButton(
                              onPressed: (() {
                                FocusScope.of(context).unfocus();
                                controller.isShowEmoji.toggle();
                              }),
                              // icon: Icon(Icons.emoji_emotions_outlined),
                              icon: Icon(Icons.emoji_emotions_outlined),
                            ),
                      suffixIcon: (controller.isButtonActive.value)
                          ? SizedBox()
                          : IconButton(
                              onPressed: (() {
                                print('di klik');
                              }),
                              icon: Icon(Icons.add_circle_outline),
                            ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      isDense: true,
                      contentPadding:
                          EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      hintText: 'Ketik Pesan',
                    ),
                    controller: controller.message.value,
                    textCapitalization: TextCapitalization.sentences,
                  ),
                ),
              ),
              SizedBox(width: 3),
              // Material(
              //   borderRadius: BorderRadius.circular(100),
              //   color: AppColor.mainlightBlue,
              //   child: InkWell(
              //     onTap: (() {
              //       print('di klik');
              //     }),
              //     child: Padding(
              //       padding: EdgeInsets.all(16),
              //       child: Icon(
              //         (controller.isButtonActive.value)
              //             ? Icons.send
              //             : Icons.mic,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColor.mainlightBlue,
                ),
                child: Obx(
                  () => (controller.isButtonActive.value)
                      ? IconButton(
                          icon: Icon(Icons.send),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          iconSize: 25,
                          color: Colors.black,
                          onPressed: (() {
                            print('di klik');
                          }),
                        )
                      : IconButton(
                          icon: Icon(Icons.mic),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          iconSize: 25,
                          color: Colors.black,
                          onPressed: (() {
                            controller.listen();
                            print('di klik');
                          }),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
