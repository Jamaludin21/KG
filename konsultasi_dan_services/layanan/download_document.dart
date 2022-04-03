import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kampus_gratis/constants.dart';
import 'package:kampus_gratis/model/dokumenModel.dart';
import 'package:kampus_gratis/screens/konsultasi_dan_services/controller.dart';

class DownloadDocument extends StatelessWidget {
  final List<String> bts = [
    "Administrasi Mahasiswa Baru",
    "Pelayanan Daftar Ulang",
    "Pengajuan Pembuatan KTM Fisik",
    "Surat keterangan aktif kuliah",
    "Surat Keterangan Mahasiswa",
    "Surat Keterangan Cuti Kuliah",
    "Surat Pengajuan Beasiswa",
    "Penerbitan Ijazah, Akta IV, Transkrip dan SKPI",
    "Administrasi Akademik Wisuda",
    "Surat keterangan Alumni",
  ];
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
              'Pilih Dokumen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Container(
            height: size.height,
            // width: size.width,
            child: Column(
              children: [
                SizedBox(height: 5),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 20,
                      );
                    },
                    padding: EdgeInsets.all(10),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (() {
                          controller.download(
                              'https://doc-0s-a8-slides.googleusercontent.com/export/3vt633dlngh9ect3v7o3s2skpk/pft5vvh1nugfq78u3gv6rvsk64/1648522635000/102021894929311873176/104438952627315743535/1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw?id=1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw&pageid=ge7b5133482_0_0&returnExportRedirectUrl=true&token=AC4w5ViHBkWadBhGcPsx1BdjQJcc7-oKOQ:1648508409867&includes_info_params=1&exportFormat=pptx&dat=AO9BBxwUXIDPotbyApSWtAcGZgieAk9ul0rz8fX7V345XZeHOGxqZOKgn8aLJNQZd_3LRWzbqjRElRD8tjE_hayoxEnirmzI_K00Itg2j5LaUF_lrHhSIv-56LiX46xCP6w726kgJ5a53oyhcKRSPTOO68NNfuDlwynEZbNO6h97PLjhjuxBhgOk-J3dujp6ZmXMy-hQnnjELWyqeriAo1oYC1Z7EuLT-d4Ewb668M2e8keA1k1AsSLVdyQSC2zYypg8OH-1kz1TfcHTpq5-XfHzDuXzsuZ4mfohVWpIGl3khwGF0o1t_pdhi1vCmJogh8mVQ1DMnDbJroHqGs-C_puG-Jyg3x7Vj3FbB8NVSYyvKK1RTWap8uhqUGjw24ClSMRdT3lObno80TheVRRIz-yX8my249Udg6FLT-F6CpfumDj0azU87ucqVsZfNZI6CpANYJGvXMieiy56PJSuDXUZQ7drXWLTOICFF-sPJhEUjAc8XgvaAv04uU92B2rOHr9Y6f4GVmeQY-aLQoIHYxDbG5KfYGkO-FnG5Tr2Wbqz9wC6sF9FKFvnVXBT0YrLCrGp7JYLqynIzKMlfMVA-TslvqsGvE4VrxIG9Dev0Wy86B9LORXcYZtFyjoCtiUgvLPrBX0SzhuDAX_Tq4nrHQOJQZ2ceZpn6_qLzeWoqMKanfkIUfQCQ0MipbpJ4dC8teoDJjPpzroKM9owiIxP2VLHJHDcxxOfzSGLwhypbXpiNyMvfhomjHloGGXBmRrlZpnS5yy-yLgMuhHQRqPcVvi5eOnqsD-OTkcZ948QaEi22dI');
                          print('di klik');
                        }),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    bts[index],
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
                //   SizedBox(height: 10),
                //   Expanded(
                //     child: ListView.builder(
                //       padding: EdgeInsets.all(10),
                //       itemCount: 1,
                //       itemBuilder: (BuildContext context, int index) {
                //         return InkWell(
                //           onTap: (() {
                //             controller.download(
                //                 'https://doc-0s-a8-slides.googleusercontent.com/export/3vt633dlngh9ect3v7o3s2skpk/pft5vvh1nugfq78u3gv6rvsk64/1648522635000/102021894929311873176/104438952627315743535/1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw?id=1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw&pageid=ge7b5133482_0_0&returnExportRedirectUrl=true&token=AC4w5ViHBkWadBhGcPsx1BdjQJcc7-oKOQ:1648508409867&includes_info_params=1&exportFormat=pptx&dat=AO9BBxwUXIDPotbyApSWtAcGZgieAk9ul0rz8fX7V345XZeHOGxqZOKgn8aLJNQZd_3LRWzbqjRElRD8tjE_hayoxEnirmzI_K00Itg2j5LaUF_lrHhSIv-56LiX46xCP6w726kgJ5a53oyhcKRSPTOO68NNfuDlwynEZbNO6h97PLjhjuxBhgOk-J3dujp6ZmXMy-hQnnjELWyqeriAo1oYC1Z7EuLT-d4Ewb668M2e8keA1k1AsSLVdyQSC2zYypg8OH-1kz1TfcHTpq5-XfHzDuXzsuZ4mfohVWpIGl3khwGF0o1t_pdhi1vCmJogh8mVQ1DMnDbJroHqGs-C_puG-Jyg3x7Vj3FbB8NVSYyvKK1RTWap8uhqUGjw24ClSMRdT3lObno80TheVRRIz-yX8my249Udg6FLT-F6CpfumDj0azU87ucqVsZfNZI6CpANYJGvXMieiy56PJSuDXUZQ7drXWLTOICFF-sPJhEUjAc8XgvaAv04uU92B2rOHr9Y6f4GVmeQY-aLQoIHYxDbG5KfYGkO-FnG5Tr2Wbqz9wC6sF9FKFvnVXBT0YrLCrGp7JYLqynIzKMlfMVA-TslvqsGvE4VrxIG9Dev0Wy86B9LORXcYZtFyjoCtiUgvLPrBX0SzhuDAX_Tq4nrHQOJQZ2ceZpn6_qLzeWoqMKanfkIUfQCQ0MipbpJ4dC8teoDJjPpzroKM9owiIxP2VLHJHDcxxOfzSGLwhypbXpiNyMvfhomjHloGGXBmRrlZpnS5yy-yLgMuhHQRqPcVvi5eOnqsD-OTkcZ948QaEi22dI');
                //             print('di klik');
                //           }),
                //           child: Container(
                //             margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 BoxShadow(
                //                   offset: Offset(0, 0),
                //                   blurRadius: 6,
                //                   color: Colors.black38,
                //                 ),
                //               ],
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10),
                //               child: Row(
                //                 children: [
                //                   Expanded(
                //                     child: Text(
                //                       'Pelayanan Daftar Ulang',
                //                       // controller.data.value[index]["judul"],
                //                       style: TextStyle(
                //                         fontSize: 17,
                //                         color: Colors.black,
                //                         fontWeight: FontWeight.w500,
                //                         overflow: TextOverflow.fade,
                //                       ),
                //                     ),
                //                   ),
                //                   // SizedBox(
                //                   //   width: size.width * 0.25
                //                   // ),
                //                   Icon(Icons.download),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                //   SizedBox(height: 10),
                //   Expanded(
                //     child: ListView.builder(
                //       padding: EdgeInsets.all(10),
                //       itemCount: 1,
                //       itemBuilder: (BuildContext context, int index) {
                //         return InkWell(
                //           onTap: (() {
                //             controller.download(
                //                 'https://doc-0s-a8-slides.googleusercontent.com/export/3vt633dlngh9ect3v7o3s2skpk/pft5vvh1nugfq78u3gv6rvsk64/1648522635000/102021894929311873176/104438952627315743535/1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw?id=1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw&pageid=ge7b5133482_0_0&returnExportRedirectUrl=true&token=AC4w5ViHBkWadBhGcPsx1BdjQJcc7-oKOQ:1648508409867&includes_info_params=1&exportFormat=pptx&dat=AO9BBxwUXIDPotbyApSWtAcGZgieAk9ul0rz8fX7V345XZeHOGxqZOKgn8aLJNQZd_3LRWzbqjRElRD8tjE_hayoxEnirmzI_K00Itg2j5LaUF_lrHhSIv-56LiX46xCP6w726kgJ5a53oyhcKRSPTOO68NNfuDlwynEZbNO6h97PLjhjuxBhgOk-J3dujp6ZmXMy-hQnnjELWyqeriAo1oYC1Z7EuLT-d4Ewb668M2e8keA1k1AsSLVdyQSC2zYypg8OH-1kz1TfcHTpq5-XfHzDuXzsuZ4mfohVWpIGl3khwGF0o1t_pdhi1vCmJogh8mVQ1DMnDbJroHqGs-C_puG-Jyg3x7Vj3FbB8NVSYyvKK1RTWap8uhqUGjw24ClSMRdT3lObno80TheVRRIz-yX8my249Udg6FLT-F6CpfumDj0azU87ucqVsZfNZI6CpANYJGvXMieiy56PJSuDXUZQ7drXWLTOICFF-sPJhEUjAc8XgvaAv04uU92B2rOHr9Y6f4GVmeQY-aLQoIHYxDbG5KfYGkO-FnG5Tr2Wbqz9wC6sF9FKFvnVXBT0YrLCrGp7JYLqynIzKMlfMVA-TslvqsGvE4VrxIG9Dev0Wy86B9LORXcYZtFyjoCtiUgvLPrBX0SzhuDAX_Tq4nrHQOJQZ2ceZpn6_qLzeWoqMKanfkIUfQCQ0MipbpJ4dC8teoDJjPpzroKM9owiIxP2VLHJHDcxxOfzSGLwhypbXpiNyMvfhomjHloGGXBmRrlZpnS5yy-yLgMuhHQRqPcVvi5eOnqsD-OTkcZ948QaEi22dI');
                //             print('di klik');
                //           }),
                //           child: Container(
                //             margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 BoxShadow(
                //                   offset: Offset(0, 0),
                //                   blurRadius: 6,
                //                   color: Colors.black38,
                //                 ),
                //               ],
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10),
                //               child: Row(
                //                 children: [
                //                   Expanded(
                //                     child: Text(
                //                       'Pengajuan Pembuatan KTM Fisik',
                //                       // controller.data.value[index]["judul"],
                //                       style: TextStyle(
                //                         fontSize: 17,
                //                         color: Colors.black,
                //                         fontWeight: FontWeight.w500,
                //                         overflow: TextOverflow.fade,
                //                       ),
                //                     ),
                //                   ),
                //                   // SizedBox(
                //                   //   width: size.width * 0.25
                //                   // ),
                //                   Icon(Icons.download),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                //   SizedBox(height: 10),
                //   Expanded(
                //     child: ListView.builder(
                //       padding: EdgeInsets.all(10),
                //       itemCount: 1,
                //       itemBuilder: (BuildContext context, int index) {
                //         return InkWell(
                //           onTap: (() {
                //             controller.download(
                //                 'https://doc-0s-a8-slides.googleusercontent.com/export/3vt633dlngh9ect3v7o3s2skpk/pft5vvh1nugfq78u3gv6rvsk64/1648522635000/102021894929311873176/104438952627315743535/1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw?id=1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw&pageid=ge7b5133482_0_0&returnExportRedirectUrl=true&token=AC4w5ViHBkWadBhGcPsx1BdjQJcc7-oKOQ:1648508409867&includes_info_params=1&exportFormat=pptx&dat=AO9BBxwUXIDPotbyApSWtAcGZgieAk9ul0rz8fX7V345XZeHOGxqZOKgn8aLJNQZd_3LRWzbqjRElRD8tjE_hayoxEnirmzI_K00Itg2j5LaUF_lrHhSIv-56LiX46xCP6w726kgJ5a53oyhcKRSPTOO68NNfuDlwynEZbNO6h97PLjhjuxBhgOk-J3dujp6ZmXMy-hQnnjELWyqeriAo1oYC1Z7EuLT-d4Ewb668M2e8keA1k1AsSLVdyQSC2zYypg8OH-1kz1TfcHTpq5-XfHzDuXzsuZ4mfohVWpIGl3khwGF0o1t_pdhi1vCmJogh8mVQ1DMnDbJroHqGs-C_puG-Jyg3x7Vj3FbB8NVSYyvKK1RTWap8uhqUGjw24ClSMRdT3lObno80TheVRRIz-yX8my249Udg6FLT-F6CpfumDj0azU87ucqVsZfNZI6CpANYJGvXMieiy56PJSuDXUZQ7drXWLTOICFF-sPJhEUjAc8XgvaAv04uU92B2rOHr9Y6f4GVmeQY-aLQoIHYxDbG5KfYGkO-FnG5Tr2Wbqz9wC6sF9FKFvnVXBT0YrLCrGp7JYLqynIzKMlfMVA-TslvqsGvE4VrxIG9Dev0Wy86B9LORXcYZtFyjoCtiUgvLPrBX0SzhuDAX_Tq4nrHQOJQZ2ceZpn6_qLzeWoqMKanfkIUfQCQ0MipbpJ4dC8teoDJjPpzroKM9owiIxP2VLHJHDcxxOfzSGLwhypbXpiNyMvfhomjHloGGXBmRrlZpnS5yy-yLgMuhHQRqPcVvi5eOnqsD-OTkcZ948QaEi22dI');
                //             print('di klik');
                //           }),
                //           child: Container(
                //             margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 BoxShadow(
                //                   offset: Offset(0, 0),
                //                   blurRadius: 6,
                //                   color: Colors.black38,
                //                 ),
                //               ],
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10),
                //               child: Row(
                //                 children: [
                //                   Expanded(
                //                     child: Text(
                //                       'Surat Keterangan Aktif Kuliah',
                //                       // controller.data.value[index]["judul"],
                //                       style: TextStyle(
                //                         fontSize: 17,
                //                         color: Colors.black,
                //                         fontWeight: FontWeight.w500,
                //                         overflow: TextOverflow.fade,
                //                       ),
                //                     ),
                //                   ),
                //                   // SizedBox(
                //                   //   width: size.width * 0.25
                //                   // ),
                //                   Icon(Icons.download),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                //   SizedBox(height: 10),
                //   Expanded(
                //     child: ListView.builder(
                //       padding: EdgeInsets.all(10),
                //       itemCount: 1,
                //       itemBuilder: (BuildContext context, int index) {
                //         return InkWell(
                //           onTap: (() {
                //             controller.download(
                //                 'https://doc-0s-a8-slides.googleusercontent.com/export/3vt633dlngh9ect3v7o3s2skpk/pft5vvh1nugfq78u3gv6rvsk64/1648522635000/102021894929311873176/104438952627315743535/1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw?id=1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw&pageid=ge7b5133482_0_0&returnExportRedirectUrl=true&token=AC4w5ViHBkWadBhGcPsx1BdjQJcc7-oKOQ:1648508409867&includes_info_params=1&exportFormat=pptx&dat=AO9BBxwUXIDPotbyApSWtAcGZgieAk9ul0rz8fX7V345XZeHOGxqZOKgn8aLJNQZd_3LRWzbqjRElRD8tjE_hayoxEnirmzI_K00Itg2j5LaUF_lrHhSIv-56LiX46xCP6w726kgJ5a53oyhcKRSPTOO68NNfuDlwynEZbNO6h97PLjhjuxBhgOk-J3dujp6ZmXMy-hQnnjELWyqeriAo1oYC1Z7EuLT-d4Ewb668M2e8keA1k1AsSLVdyQSC2zYypg8OH-1kz1TfcHTpq5-XfHzDuXzsuZ4mfohVWpIGl3khwGF0o1t_pdhi1vCmJogh8mVQ1DMnDbJroHqGs-C_puG-Jyg3x7Vj3FbB8NVSYyvKK1RTWap8uhqUGjw24ClSMRdT3lObno80TheVRRIz-yX8my249Udg6FLT-F6CpfumDj0azU87ucqVsZfNZI6CpANYJGvXMieiy56PJSuDXUZQ7drXWLTOICFF-sPJhEUjAc8XgvaAv04uU92B2rOHr9Y6f4GVmeQY-aLQoIHYxDbG5KfYGkO-FnG5Tr2Wbqz9wC6sF9FKFvnVXBT0YrLCrGp7JYLqynIzKMlfMVA-TslvqsGvE4VrxIG9Dev0Wy86B9LORXcYZtFyjoCtiUgvLPrBX0SzhuDAX_Tq4nrHQOJQZ2ceZpn6_qLzeWoqMKanfkIUfQCQ0MipbpJ4dC8teoDJjPpzroKM9owiIxP2VLHJHDcxxOfzSGLwhypbXpiNyMvfhomjHloGGXBmRrlZpnS5yy-yLgMuhHQRqPcVvi5eOnqsD-OTkcZ948QaEi22dI');
                //             print('di klik');
                //           }),
                //           child: Container(
                //             margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 BoxShadow(
                //                   offset: Offset(0, 0),
                //                   blurRadius: 6,
                //                   color: Colors.black38,
                //                 ),
                //               ],
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10),
                //               child: Row(
                //                 children: [
                //                   Expanded(
                //                     child: Text(
                //                       'Surat Keterangan Mahasiswa',
                //                       // controller.data.value[index]["judul"],
                //                       style: TextStyle(
                //                         fontSize: 17,
                //                         color: Colors.black,
                //                         fontWeight: FontWeight.w500,
                //                         overflow: TextOverflow.fade,
                //                       ),
                //                     ),
                //                   ),
                //                   // SizedBox(
                //                   //   width: size.width * 0.25
                //                   // ),
                //                   Icon(Icons.download),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                //   SizedBox(height: 10),
                //   Expanded(
                //     child: ListView.builder(
                //       padding: EdgeInsets.all(10),
                //       itemCount: 1,
                //       itemBuilder: (BuildContext context, int index) {
                //         return InkWell(
                //           onTap: (() {
                //             controller.download(
                //                 'https://doc-0s-a8-slides.googleusercontent.com/export/3vt633dlngh9ect3v7o3s2skpk/pft5vvh1nugfq78u3gv6rvsk64/1648522635000/102021894929311873176/104438952627315743535/1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw?id=1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw&pageid=ge7b5133482_0_0&returnExportRedirectUrl=true&token=AC4w5ViHBkWadBhGcPsx1BdjQJcc7-oKOQ:1648508409867&includes_info_params=1&exportFormat=pptx&dat=AO9BBxwUXIDPotbyApSWtAcGZgieAk9ul0rz8fX7V345XZeHOGxqZOKgn8aLJNQZd_3LRWzbqjRElRD8tjE_hayoxEnirmzI_K00Itg2j5LaUF_lrHhSIv-56LiX46xCP6w726kgJ5a53oyhcKRSPTOO68NNfuDlwynEZbNO6h97PLjhjuxBhgOk-J3dujp6ZmXMy-hQnnjELWyqeriAo1oYC1Z7EuLT-d4Ewb668M2e8keA1k1AsSLVdyQSC2zYypg8OH-1kz1TfcHTpq5-XfHzDuXzsuZ4mfohVWpIGl3khwGF0o1t_pdhi1vCmJogh8mVQ1DMnDbJroHqGs-C_puG-Jyg3x7Vj3FbB8NVSYyvKK1RTWap8uhqUGjw24ClSMRdT3lObno80TheVRRIz-yX8my249Udg6FLT-F6CpfumDj0azU87ucqVsZfNZI6CpANYJGvXMieiy56PJSuDXUZQ7drXWLTOICFF-sPJhEUjAc8XgvaAv04uU92B2rOHr9Y6f4GVmeQY-aLQoIHYxDbG5KfYGkO-FnG5Tr2Wbqz9wC6sF9FKFvnVXBT0YrLCrGp7JYLqynIzKMlfMVA-TslvqsGvE4VrxIG9Dev0Wy86B9LORXcYZtFyjoCtiUgvLPrBX0SzhuDAX_Tq4nrHQOJQZ2ceZpn6_qLzeWoqMKanfkIUfQCQ0MipbpJ4dC8teoDJjPpzroKM9owiIxP2VLHJHDcxxOfzSGLwhypbXpiNyMvfhomjHloGGXBmRrlZpnS5yy-yLgMuhHQRqPcVvi5eOnqsD-OTkcZ948QaEi22dI');
                //             print('di klik');
                //           }),
                //           child: Container(
                //             margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 BoxShadow(
                //                   offset: Offset(0, 0),
                //                   blurRadius: 6,
                //                   color: Colors.black38,
                //                 ),
                //               ],
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10),
                //               child: Row(
                //                 children: [
                //                   Expanded(
                //                     child: Text(
                //                       'Surat Keterangan Cuti Kuliah',
                //                       // controller.data.value[index]["judul"],
                //                       style: TextStyle(
                //                         fontSize: 17,
                //                         color: Colors.black,
                //                         fontWeight: FontWeight.w500,
                //                         overflow: TextOverflow.fade,
                //                       ),
                //                     ),
                //                   ),
                //                   // SizedBox(
                //                   //   width: size.width * 0.25
                //                   // ),
                //                   Icon(Icons.download),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                //   SizedBox(height: 10),
                //   Expanded(
                //     child: ListView.builder(
                //       padding: EdgeInsets.all(10),
                //       itemCount: 1,
                //       itemBuilder: (BuildContext context, int index) {
                //         return InkWell(
                //           onTap: (() {
                //             controller.download(
                //                 'https://doc-0s-a8-slides.googleusercontent.com/export/3vt633dlngh9ect3v7o3s2skpk/pft5vvh1nugfq78u3gv6rvsk64/1648522635000/102021894929311873176/104438952627315743535/1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw?id=1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw&pageid=ge7b5133482_0_0&returnExportRedirectUrl=true&token=AC4w5ViHBkWadBhGcPsx1BdjQJcc7-oKOQ:1648508409867&includes_info_params=1&exportFormat=pptx&dat=AO9BBxwUXIDPotbyApSWtAcGZgieAk9ul0rz8fX7V345XZeHOGxqZOKgn8aLJNQZd_3LRWzbqjRElRD8tjE_hayoxEnirmzI_K00Itg2j5LaUF_lrHhSIv-56LiX46xCP6w726kgJ5a53oyhcKRSPTOO68NNfuDlwynEZbNO6h97PLjhjuxBhgOk-J3dujp6ZmXMy-hQnnjELWyqeriAo1oYC1Z7EuLT-d4Ewb668M2e8keA1k1AsSLVdyQSC2zYypg8OH-1kz1TfcHTpq5-XfHzDuXzsuZ4mfohVWpIGl3khwGF0o1t_pdhi1vCmJogh8mVQ1DMnDbJroHqGs-C_puG-Jyg3x7Vj3FbB8NVSYyvKK1RTWap8uhqUGjw24ClSMRdT3lObno80TheVRRIz-yX8my249Udg6FLT-F6CpfumDj0azU87ucqVsZfNZI6CpANYJGvXMieiy56PJSuDXUZQ7drXWLTOICFF-sPJhEUjAc8XgvaAv04uU92B2rOHr9Y6f4GVmeQY-aLQoIHYxDbG5KfYGkO-FnG5Tr2Wbqz9wC6sF9FKFvnVXBT0YrLCrGp7JYLqynIzKMlfMVA-TslvqsGvE4VrxIG9Dev0Wy86B9LORXcYZtFyjoCtiUgvLPrBX0SzhuDAX_Tq4nrHQOJQZ2ceZpn6_qLzeWoqMKanfkIUfQCQ0MipbpJ4dC8teoDJjPpzroKM9owiIxP2VLHJHDcxxOfzSGLwhypbXpiNyMvfhomjHloGGXBmRrlZpnS5yy-yLgMuhHQRqPcVvi5eOnqsD-OTkcZ948QaEi22dI');
                //             print('di klik');
                //           }),
                //           child: Container(
                //             margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 BoxShadow(
                //                   offset: Offset(0, 0),
                //                   blurRadius: 6,
                //                   color: Colors.black38,
                //                 ),
                //               ],
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10),
                //               child: Row(
                //                 children: [
                //                   Expanded(
                //                     child: Text(
                //                       'Surat Pengajuan Beasiswa',
                //                       // controller.data.value[index]["judul"],
                //                       style: TextStyle(
                //                         fontSize: 17,
                //                         color: Colors.black,
                //                         fontWeight: FontWeight.w500,
                //                         overflow: TextOverflow.fade,
                //                       ),
                //                     ),
                //                   ),
                //                   // SizedBox(
                //                   //   width: size.width * 0.25
                //                   // ),
                //                   Icon(Icons.download),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                //   SizedBox(height: 10),
                //   Expanded(
                //     child: ListView.builder(
                //       padding: EdgeInsets.all(10),
                //       itemCount: 1,
                //       itemBuilder: (BuildContext context, int index) {
                //         return InkWell(
                //           onTap: (() {
                //             controller.download(
                //                 'https://doc-0s-a8-slides.googleusercontent.com/export/3vt633dlngh9ect3v7o3s2skpk/pft5vvh1nugfq78u3gv6rvsk64/1648522635000/102021894929311873176/104438952627315743535/1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw?id=1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw&pageid=ge7b5133482_0_0&returnExportRedirectUrl=true&token=AC4w5ViHBkWadBhGcPsx1BdjQJcc7-oKOQ:1648508409867&includes_info_params=1&exportFormat=pptx&dat=AO9BBxwUXIDPotbyApSWtAcGZgieAk9ul0rz8fX7V345XZeHOGxqZOKgn8aLJNQZd_3LRWzbqjRElRD8tjE_hayoxEnirmzI_K00Itg2j5LaUF_lrHhSIv-56LiX46xCP6w726kgJ5a53oyhcKRSPTOO68NNfuDlwynEZbNO6h97PLjhjuxBhgOk-J3dujp6ZmXMy-hQnnjELWyqeriAo1oYC1Z7EuLT-d4Ewb668M2e8keA1k1AsSLVdyQSC2zYypg8OH-1kz1TfcHTpq5-XfHzDuXzsuZ4mfohVWpIGl3khwGF0o1t_pdhi1vCmJogh8mVQ1DMnDbJroHqGs-C_puG-Jyg3x7Vj3FbB8NVSYyvKK1RTWap8uhqUGjw24ClSMRdT3lObno80TheVRRIz-yX8my249Udg6FLT-F6CpfumDj0azU87ucqVsZfNZI6CpANYJGvXMieiy56PJSuDXUZQ7drXWLTOICFF-sPJhEUjAc8XgvaAv04uU92B2rOHr9Y6f4GVmeQY-aLQoIHYxDbG5KfYGkO-FnG5Tr2Wbqz9wC6sF9FKFvnVXBT0YrLCrGp7JYLqynIzKMlfMVA-TslvqsGvE4VrxIG9Dev0Wy86B9LORXcYZtFyjoCtiUgvLPrBX0SzhuDAX_Tq4nrHQOJQZ2ceZpn6_qLzeWoqMKanfkIUfQCQ0MipbpJ4dC8teoDJjPpzroKM9owiIxP2VLHJHDcxxOfzSGLwhypbXpiNyMvfhomjHloGGXBmRrlZpnS5yy-yLgMuhHQRqPcVvi5eOnqsD-OTkcZ948QaEi22dI');
                //             print('di klik');
                //           }),
                //           child: Container(
                //             margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 BoxShadow(
                //                   offset: Offset(0, 0),
                //                   blurRadius: 6,
                //                   color: Colors.black38,
                //                 ),
                //               ],
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10),
                //               child: Row(
                //                 children: [
                //                   Expanded(
                //                     child: Text(
                //                       'Penerbitan Ijazah, Akta IV, Transkrip dan SKPI',
                //                       // controller.data.value[index]["judul"],
                //                       style: TextStyle(
                //                         fontSize: 15,
                //                         color: Colors.black,
                //                         fontWeight: FontWeight.w500,
                //                         overflow: TextOverflow.fade,
                //                       ),
                //                     ),
                //                   ),
                //                   // SizedBox(
                //                   //   width: size.width * 0.25
                //                   // ),
                //                   Icon(Icons.download),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                //   SizedBox(height: 10),
                //   Expanded(
                //     child: ListView.builder(
                //       padding: EdgeInsets.all(10),
                //       itemCount: 1,
                //       itemBuilder: (BuildContext context, int index) {
                //         return InkWell(
                //           onTap: (() {
                //             controller.download(
                //                 'https://doc-0s-a8-slides.googleusercontent.com/export/3vt633dlngh9ect3v7o3s2skpk/pft5vvh1nugfq78u3gv6rvsk64/1648522635000/102021894929311873176/104438952627315743535/1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw?id=1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw&pageid=ge7b5133482_0_0&returnExportRedirectUrl=true&token=AC4w5ViHBkWadBhGcPsx1BdjQJcc7-oKOQ:1648508409867&includes_info_params=1&exportFormat=pptx&dat=AO9BBxwUXIDPotbyApSWtAcGZgieAk9ul0rz8fX7V345XZeHOGxqZOKgn8aLJNQZd_3LRWzbqjRElRD8tjE_hayoxEnirmzI_K00Itg2j5LaUF_lrHhSIv-56LiX46xCP6w726kgJ5a53oyhcKRSPTOO68NNfuDlwynEZbNO6h97PLjhjuxBhgOk-J3dujp6ZmXMy-hQnnjELWyqeriAo1oYC1Z7EuLT-d4Ewb668M2e8keA1k1AsSLVdyQSC2zYypg8OH-1kz1TfcHTpq5-XfHzDuXzsuZ4mfohVWpIGl3khwGF0o1t_pdhi1vCmJogh8mVQ1DMnDbJroHqGs-C_puG-Jyg3x7Vj3FbB8NVSYyvKK1RTWap8uhqUGjw24ClSMRdT3lObno80TheVRRIz-yX8my249Udg6FLT-F6CpfumDj0azU87ucqVsZfNZI6CpANYJGvXMieiy56PJSuDXUZQ7drXWLTOICFF-sPJhEUjAc8XgvaAv04uU92B2rOHr9Y6f4GVmeQY-aLQoIHYxDbG5KfYGkO-FnG5Tr2Wbqz9wC6sF9FKFvnVXBT0YrLCrGp7JYLqynIzKMlfMVA-TslvqsGvE4VrxIG9Dev0Wy86B9LORXcYZtFyjoCtiUgvLPrBX0SzhuDAX_Tq4nrHQOJQZ2ceZpn6_qLzeWoqMKanfkIUfQCQ0MipbpJ4dC8teoDJjPpzroKM9owiIxP2VLHJHDcxxOfzSGLwhypbXpiNyMvfhomjHloGGXBmRrlZpnS5yy-yLgMuhHQRqPcVvi5eOnqsD-OTkcZ948QaEi22dI');
                //             print('di klik');
                //           }),
                //           child: Container(
                //             margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 BoxShadow(
                //                   offset: Offset(0, 0),
                //                   blurRadius: 6,
                //                   color: Colors.black38,
                //                 ),
                //               ],
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10),
                //               child: Row(
                //                 children: [
                //                   Expanded(
                //                     child: Text(
                //                       'Administrasi Akademik Wisuda',
                //                       // controller.data.value[index]["judul"],
                //                       style: TextStyle(
                //                         fontSize: 17,
                //                         color: Colors.black,
                //                         fontWeight: FontWeight.w500,
                //                         overflow: TextOverflow.fade,
                //                       ),
                //                     ),
                //                   ),
                //                   // SizedBox(
                //                   //   width: size.width * 0.25
                //                   // ),
                //                   Icon(Icons.download),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                //   SizedBox(height: 10),
                //   Expanded(
                //     child: ListView.builder(
                //       padding: EdgeInsets.all(10),
                //       itemCount: 1,
                //       itemBuilder: (BuildContext context, int index) {
                //         return InkWell(
                //           onTap: (() {
                //             controller.download(
                //                 'https://doc-0s-a8-slides.googleusercontent.com/export/3vt633dlngh9ect3v7o3s2skpk/pft5vvh1nugfq78u3gv6rvsk64/1648522635000/102021894929311873176/104438952627315743535/1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw?id=1urq9_7EoGvulgC--3LVBF8dl8o9NDRhIru9fqCG-XQw&pageid=ge7b5133482_0_0&returnExportRedirectUrl=true&token=AC4w5ViHBkWadBhGcPsx1BdjQJcc7-oKOQ:1648508409867&includes_info_params=1&exportFormat=pptx&dat=AO9BBxwUXIDPotbyApSWtAcGZgieAk9ul0rz8fX7V345XZeHOGxqZOKgn8aLJNQZd_3LRWzbqjRElRD8tjE_hayoxEnirmzI_K00Itg2j5LaUF_lrHhSIv-56LiX46xCP6w726kgJ5a53oyhcKRSPTOO68NNfuDlwynEZbNO6h97PLjhjuxBhgOk-J3dujp6ZmXMy-hQnnjELWyqeriAo1oYC1Z7EuLT-d4Ewb668M2e8keA1k1AsSLVdyQSC2zYypg8OH-1kz1TfcHTpq5-XfHzDuXzsuZ4mfohVWpIGl3khwGF0o1t_pdhi1vCmJogh8mVQ1DMnDbJroHqGs-C_puG-Jyg3x7Vj3FbB8NVSYyvKK1RTWap8uhqUGjw24ClSMRdT3lObno80TheVRRIz-yX8my249Udg6FLT-F6CpfumDj0azU87ucqVsZfNZI6CpANYJGvXMieiy56PJSuDXUZQ7drXWLTOICFF-sPJhEUjAc8XgvaAv04uU92B2rOHr9Y6f4GVmeQY-aLQoIHYxDbG5KfYGkO-FnG5Tr2Wbqz9wC6sF9FKFvnVXBT0YrLCrGp7JYLqynIzKMlfMVA-TslvqsGvE4VrxIG9Dev0Wy86B9LORXcYZtFyjoCtiUgvLPrBX0SzhuDAX_Tq4nrHQOJQZ2ceZpn6_qLzeWoqMKanfkIUfQCQ0MipbpJ4dC8teoDJjPpzroKM9owiIxP2VLHJHDcxxOfzSGLwhypbXpiNyMvfhomjHloGGXBmRrlZpnS5yy-yLgMuhHQRqPcVvi5eOnqsD-OTkcZ948QaEi22dI');
                //             print('di klik');
                //           }),
                //           child: Container(
                //             margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(10),
                //               boxShadow: [
                //                 BoxShadow(
                //                   offset: Offset(0, 0),
                //                   blurRadius: 6,
                //                   color: Colors.black38,
                //                 ),
                //               ],
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10),
                //               child: Row(
                //                 children: [
                //                   Expanded(
                //                     child: Text(
                //                       'Surat Keterangan Alumni',
                //                       // controller.data.value[index]["judul"],
                //                       style: TextStyle(
                //                         fontSize: 17,
                //                         color: Colors.black,
                //                         fontWeight: FontWeight.w500,
                //                         overflow: TextOverflow.fade,
                //                       ),
                //                     ),
                //                   ),
                //                   // SizedBox(
                //                   //   width: size.width * 0.25
                //                   // ),
                //                   Icon(Icons.download),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                // ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
