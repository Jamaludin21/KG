import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:kampus_gratis/screens/konsultasi_dan_services/messageKonsultasi.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/konsultasi/partnerKonsultasi.dart';

class Konsultasi extends StatelessWidget {
  const Konsultasi({Key? key}) : super(key: key);

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
                    Get.to(PartnerKonsultasi());
                    print('di klik 1');
                  }),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Konsultasi Karir dan Cita-cita',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                                Text(
                                  '(Jenjang karir, konsentrasi mata kuliah, jenis magang, dsb.)',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ],
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Konsultasi Masalah Keluarga dan Keuangan',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                                Text(
                                  '(Solusi beasiswa, projek berbayar, pinjaman yang difasilitasi Kampus Gratis & disponsori oleh pembimbing akademis atau civitas Kampus Gratis, dsb.)',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ],
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Konsultasi Masalah Pribadi dan Cuti Kuliah',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                                Text(
                                  '(Sedang kerja, hamil, penyakit berat, rawat inap, melakukan tindakan kriminal, memakai narkoba, dsb.)',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ],
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Konsultasi Akademik',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                                Text(
                                  '(Skripsi, magang, penugasan, dan hal-hal terkait penilaian prestasi kampus atau kinerja di kampus)',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ],
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
                              'Konsultasi diluar hal-hal di atas',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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
