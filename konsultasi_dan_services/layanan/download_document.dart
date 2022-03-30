import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kampus_gratis/constants.dart';
import 'package:kampus_gratis/model/dokumenModel.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/controller.dart';

class DownloadDocument extends StatelessWidget {
  DownloadDocument({Key? key}) : super(key: key);
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
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              iconSize: 24.0,
              color: Colors.white,
              onPressed: () {
                Get.back();
              },
            ),
            title: const Text(
              'Dokumen Surat-surat',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Container(
            height: size.height,
            // width: size.width,
            child: Column(
              children: [
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(15),
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (() {
                          controller.download(
                              'https://file-examples-com.github.io/uploads/2017/02/file-sample_100kB.doc');
                          print('di klik');
                        }),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 6,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Surat Keterangan Mahasiswa',
                                    // controller.data.value[index]["judul"],
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                                // SizedBox(
                                //   width: size.width * 0.25
                                // ),
                                Icon(Icons.download),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
