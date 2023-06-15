import 'package:flutter/material.dart';
import 'package:pboproject/model/data.dart';
import 'package:pboproject/screen/subscreen/pinjam/pinjambuku.dart';
import 'package:pboproject/widget/textStyle.dart';

class Manajemen extends StatefulWidget {
  const Manajemen({super.key});

  @override
  State<Manajemen> createState() => _ManajemenState();
}

class _ManajemenState extends State<Manajemen> {
  List<BukuPopuler> dataList = [
    BukuPopuler(
      namabuku: "Pengantar Manajemen",
      creator: "Haryono Jusuf",
      imageAsset: 'images/manajemen/m1.png',
    ),
    BukuPopuler(
      namabuku: "Manajemen",
      creator: "Erna Novitasari",
      imageAsset: "images/manajemen/m2.png",
    ),
    BukuPopuler(
      namabuku: "Manajemen Keuangan Syariah",
      creator: "Dr. Hamni Agustin",
      imageAsset: "images/manajemen/m3.png",
    ),
    BukuPopuler(
      namabuku: "Buku Sakti Pengantar Manajemen",
      creator: "Wildana Nur Ardhianto",
      imageAsset: "images/manajemen/m4.png",
    ),
    BukuPopuler(
      namabuku: "Manajemen Dasar Bisnis",
      creator: "Dr. Ely & Dr. Sri",
      imageAsset: "images/manajemen/m6.png",
    ),
    BukuPopuler(
      namabuku: "Manajemen Pemerintah",
      creator: "R. Luki Karunia",
      imageAsset: "images/manajemen/m5.png",
    ),
      BukuPopuler(
      namabuku: "Manajemen Pemerintah",
      creator: "R. Luki Karunia",
      imageAsset: "images/manajemen/m7.png",
    ),
      BukuPopuler(
      namabuku: "Manajemen Pemerintah",
      creator: "R. Luki Karunia",
      imageAsset: "images/manajemen/m8.png",
    ),
      BukuPopuler(
      namabuku: "Manajemen Pemerintah",
      creator: "R. Luki Karunia",
      imageAsset: "images/manajemen/m9.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // ubah offset jika perlu
                ),
              ],
            ),
            child: const Row(
              children: [
                SizedBox(width: 10.0),
                Icon(Icons.search),
                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // number of items in each row
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 8.0, // spacing between columns
            mainAxisExtent: 220,
          ),
          padding: const EdgeInsets.all(8.0),
          shrinkWrap: true,
          itemCount: dataList.length,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, index) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => const PinjamBuku()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      // width: 130,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            dataList[index].imageAsset,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 130,
                    child: Text(
                        overflow: TextOverflow.ellipsis,
                        dataList[index].namabuku,
                        style: const BookTitle()),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: 130,
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      dataList[index].creator,
                    ),
                  ),
                ]);
          },
        ),
      ],
    );
  }
}
