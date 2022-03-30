import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/layanan/download_document.dart';

class Layanan extends StatelessWidget {
  const Layanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
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
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   'Paling Sering Ditanyakan',
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: Colors.black,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
                // SizedBox(height: 20),
                InkWell(
                  onTap: (() {
                    Get.to(DownloadDocument());
                    print('di klik 1');
                  }),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              'Dokumen',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                          size: 35,
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Divider(
                  color: Colors.grey[350],
                  thickness: 2,
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: (() {
                    print('di klik 1');
                  }),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              'Kenapa saya tidak bisa mengirim komentar pada forum diskusi?',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                          size: 35,
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Divider(
                  color: Colors.grey[350],
                  thickness: 2,
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: (() {
                    print('di klik 2');
                  }),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              'Kenapa saya tidak bisa memutar video?',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                          size: 35,
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Divider(
                  color: Colors.grey[350],
                  thickness: 2,
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: (() {
                    print('di klik 3');
                  }),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              'Kenapa saya pendek?',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                          size: 35,
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Divider(
                  color: Colors.grey[350],
                  thickness: 2,
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: (() {
                    print('di klik 4');
                  }),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              'Kenapa saya gendut?',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                          size: 35,
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Divider(
                  color: Colors.grey[350],
                  thickness: 2,
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: (() {
                    print('di klik 5');
                  }),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              'Kenapa saya jelek?',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                          size: 35,
                        )),
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: 5),
                // Divider(
                //   color: Colors.grey[350],
                //   thickness: 2,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
