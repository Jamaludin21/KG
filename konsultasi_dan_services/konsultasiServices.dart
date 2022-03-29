import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/controller.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/konsultasi/konsultasi.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/layanan/layanan.dart';

class KonsultasiServices extends StatelessWidget {
  KonsultasiServices({Key? key}) : super(key: key);
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        print('unfokus');
      },
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
            'Konsultasi & Layanan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   // decoration: BoxDecoration(
                //   //   color: Colors.blue,
                //   //   borderRadius: BorderRadius.only(
                //   //     bottomLeft: Radius.circular(20),
                //   //     bottomRight: Radius.circular(20),
                //   //   ),
                //   // ),
                //   child: Padding(
                //     padding: const EdgeInsets.all(20),
                //     child: Container(
                //       height: 50,
                //       decoration: BoxDecoration(
                //         color: Colors.white,
                //         borderRadius: BorderRadius.circular(20),
                //         boxShadow: [
                //           BoxShadow(
                //             offset: Offset(0, 0),
                //             blurRadius: 6,
                //             color: Colors.black38,
                //           ),
                //         ],
                //       ),
                //       child: Row(
                //         children: [
                //           Expanded(
                //             child: Padding(
                //               padding: const EdgeInsets.only(left: 20),
                //               child: TextField(
                //                 style: TextStyle(
                //                   color: Colors.black
                //                 ),
                //                 focusNode: controller.focusNodeSearch.value,
                //                 textAlignVertical: TextAlignVertical.center,
                //                 keyboardType: TextInputType.multiline,
                //                 // maxLines: 5,
                //                 // minLines: 1,
                //                 decoration: InputDecoration.collapsed(
                //                   hintText: 'Search',
                //                   hintStyle: TextStyle(
                //                     color: Colors.black
                //                   )
                //                 ),
                //                 controller: controller.search.value,
                //                 textCapitalization:
                //                     TextCapitalization.sentences,
                //               ),
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(right: 20),
                //             child: IconButton(
                //               onPressed: (() {
                //                 print('diklik');
                //               }),
                //               icon: Icon(
                //                 Icons.search,
                //                 color: Colors.black
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Text(
                      'Konsultasi',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Konsultasi(),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Text(
                      'Layanan',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Layanan(),
                SizedBox(height: 20),
                // Padding(
                //   padding: const EdgeInsets.only(left: 20, right: 20),
                //   child: Container(
                //     height: 50,
                //     width: size.width,
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(12),
                //       boxShadow: [
                //         BoxShadow(
                //           offset: Offset(0, 0),
                //           blurRadius: 6,
                //           color: Colors.black38,
                //         ),
                //       ],
                //     ),
                //     child: Center(
                //       child: Text(
                //         'Lihat Semua FAQ',
                //         style: TextStyle(
                //           fontSize: 20,
                //           color: Colors.black,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(height: 20),

                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: Padding(
                //     padding: const EdgeInsets.all(20),
                //     child: GestureDetector(
                //       onTap: (() {
                //         print('bot diklik');
                //       }),
                //       child: Container(
                //         height: 70,
                //         width: 70,
                //         decoration: BoxDecoration(
                //           color: Colors.blue[200],
                //           borderRadius: BorderRadius.circular(50),
                //           boxShadow: [
                //             BoxShadow(
                //               offset: Offset(0, 0),
                //               blurRadius: 6,
                //               color: Colors.black38,
                //             ),
                //           ],
                //         ),
                //         child: Padding(
                //           padding: const EdgeInsets.all(5),
                //           child: const ImageIcon(
                //             AssetImage('assets/icons/botchat.png'),
                //             size: 25,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
