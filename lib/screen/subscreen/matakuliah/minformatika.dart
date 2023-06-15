import 'package:flutter/material.dart';
import 'package:pboproject/model/data.dart';
import 'package:pboproject/widget/textStyle.dart';

class ManajemenInformatika extends StatefulWidget {
  const ManajemenInformatika({super.key});

  @override
  State<ManajemenInformatika> createState() => _ManajemenInformatikaState();
}

class _ManajemenInformatikaState extends State<ManajemenInformatika> {
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
                      hintText: 'ManajemenInformatika',
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
                  Container(
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
