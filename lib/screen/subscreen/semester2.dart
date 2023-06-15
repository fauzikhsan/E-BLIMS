import 'package:flutter/material.dart';
import 'package:pboproject/model/data.dart';
import 'package:pboproject/screen/mainscreen/bottombar.dart';
import 'package:pboproject/screen/subscreen/matakuliah/adm.dart';
import 'package:pboproject/screen/subscreen/matakuliah/manajemen.dart';
import 'package:pboproject/screen/subscreen/matakuliah/minformatika.dart';
import 'package:pboproject/screen/subscreen/matakuliah/rpl.dart';
import 'package:pboproject/screen/subscreen/matakuliah/sekretari.dart';
import 'package:pboproject/screen/subscreen/matakuliah/si.dart';
import 'package:pboproject/screen/subscreen/matakuliah/ti.dart';
import 'package:pboproject/widget/textStyle.dart';

import 'matakuliah/akuntansi.dart';

class Semester2 extends StatefulWidget {
  const Semester2({super.key});

  @override
  State<Semester2> createState() => _Semester2State();
}

class _Semester2State extends State<Semester2> with TickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(vsync: this, length: 8);
    super.initState();
  }

  List<BukuPopuler> dataList = [
    BukuPopuler(
      namabuku: "Pengantar Akuntansi",
      creator: "Haryono Jusuf",
      imageAsset: 'images/akuntansi/akuntansi1.png',
    ),
    BukuPopuler(
      namabuku: "Pengantar Akuntansi",
      creator: "Indra Mahardika Putra",
      imageAsset: "images/akuntansi/akuntansi2.png",
    ),
    BukuPopuler(
      namabuku: "Akuntansi Keuangan Menengah",
      creator: "Hery S.E.,M.Si.,CRP",
      imageAsset: "images/akuntansi/akuntansi3.png",
    ),
    BukuPopuler(
      namabuku: "Buku Sakti Pengantar Akuntansi",
      creator: "Wildana Nur Ardhianto",
      imageAsset: "images/akuntansi/akuntansi4.png",
    ),
    BukuPopuler(
      namabuku: "Akuntansi Dasar Bisnis",
      creator: "Dr. Ely & Dr. Sri",
      imageAsset: "images/akuntansi/akuntansi5.png",
    ),
    BukuPopuler(
      namabuku: "Akuntansi Pemerintah",
      creator: "R. Luki Karunia",
      imageAsset: "images/akuntansi/akuntansi6.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfff8f9fa),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomBar(
                                  displayname: '',
                                )));
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 12),
                  child: SizedBox(
                      width: 180,
                      child: Text(
                        "Semester 2",
                        style: SemesterText(),
                      )),
                ),
                const SizedBox(height: 20.0),

                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: TabBar(
                    isScrollable: true,
                    indicatorPadding: const EdgeInsets.all(0),
                    // indicator: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(16),
                    //     color: const Color(0xff3e7cb1)),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: const Color(0xff134074),
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle:
                        const TextStyle(fontFamily: "Poppins", fontSize: 14),
                    controller: controller,
                    tabs: const [
                      Tab(text: "Akuntansi"),
                      Tab(text: "Manajemen"),
                      Tab(text: "Teknik Informatika"),
                      Tab(text: "Sistem Informasi"),
                      Tab(text: "Administrasi"),
                      Tab(text: "RPL"),
                      Tab(text: "Manajemen Informatika"),
                      Tab(text: "Sekretari"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: TabBarView(
                    controller: controller,
                    children: const [
                      Akuntansi(),
                      Manajemen(),
                      TeknikInformatika(),
                      SistemInformasi(),
                      Administrasi(),
                      RPL(),
                      ManajemenInformatika(),
                      Sekretari(),
                    ],
                  ),
                ),
                // const ListTile(
                //   contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                //   title: Text(
                //     "Buku Populer ⭐",
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                //   trailing: Text("Lihat semua", style: LihatSemua()),
                // ),
                // const SizedBox(height: 8),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "Mungkin kamu suka 👌",
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 17,
                //       ),
                //     ),
                //     Text("Lihat semua", style: LihatSemua()),
                //   ],
                // ),
                // // const ListTile(
                // //   contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                // //   title: Text(
                // //     "Mungkin kamu suka 👌",
                // //   ),
                // //   trailing: Text("Lihat semua", style: LihatSemua()),
                // // ),
                // ListView.builder(
                //   physics: const NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   itemCount: databuku.length,
                //   itemBuilder: (BuildContext context, index) {
                //     return Row(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Container(
                //             margin: const EdgeInsets.only(bottom: 15, right: 15),
                //             width: 70,
                //             height: 70,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(15),
                //               image: DecorationImage(
                //                 image: NetworkImage(
                //                   databuku[index].imageAsset,
                //                 ),
                //                 fit: BoxFit.cover,
                //               ),
                //             ),
                //           ),
                //           Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               SizedBox(
                //                 child: Text(
                //                     overflow: TextOverflow.ellipsis,
                //                     databuku[index].namabuku,
                //                     style: const BookTitle()),
                //               ),
                //               SizedBox(
                //                 child: Text(
                //                   overflow: TextOverflow.ellipsis,
                //                   databuku[index].creator,
                //                 ),
                //               ),
                //               SizedBox(
                //                 child: Text(
                //                   overflow: TextOverflow.ellipsis,
                //                   databuku[index].rating,
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ]);
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
