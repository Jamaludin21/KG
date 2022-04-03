import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kampus_gratis/constants.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/konsultasi/room_chat_konsultasi.dart';
// import 'package:kampus_gratis/screens/konsultasi_dan_services/konsultasi/messageKonsultasi.dart';

class PartnerKonsultasi extends StatelessWidget {
  const PartnerKonsultasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
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
            'Konsultasi Dengan',
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
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (() {
                          Get.to(RoomChatKonsultasi());
                          print('di klik');
                        }),
                        child: Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 6,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Pembimbing Akademik',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (() {
                          Get.to(RoomChatKonsultasi());
                          print('di klik');
                        }),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(220, 0, 0, 0),
                          height: 60,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 6,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Booking PA',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (() {
                          Get.to(RoomChatKonsultasi());
                          print('di klik');
                        }),
                        child: Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 6,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Konselor',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (() {
                          Get.to(RoomChatKonsultasi());
                          print('di klik');
                        }),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(170, 0, 0, 0),
                          height: 60,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 6,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Booking Konselor',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (() {
                          Get.to(RoomChatKonsultasi());
                          print('di klik');
                        }),
                        child: Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 6,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Administrasi Perkuliahan',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (() {
                          Get.to(RoomChatKonsultasi());
                          print('di klik');
                        }),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(220, 0, 0, 0),
                          height: 60,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 6,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Booking AP',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (() {
                          Get.to(RoomChatKonsultasi());
                          print('di klik');
                        }),
                        child: Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 6,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Keluhan dan Input Pelayanan',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (() {
                          Get.to(RoomChatKonsultasi());
                          print('di klik');
                        }),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(120, 0, 0, 0),
                          height: 60,
                          width: 235,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 6,
                                color: Colors.black38,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Booking Petugas Pelayanan',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
