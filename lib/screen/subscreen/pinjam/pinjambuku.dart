import 'package:flutter/material.dart';
import 'package:pboproject/widget/dialog.dart';
import 'package:pboproject/widget/textStyle.dart';

class PinjamBuku extends StatefulWidget {
  const PinjamBuku({super.key});

  @override
  State<PinjamBuku> createState() => _PinjamBukuState();
}

class _PinjamBukuState extends State<PinjamBuku> with TickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd7d9ce),
      appBar: AppBar(
        backgroundColor: const Color(0xffd7d9ce),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Merunduk",
          style: Head1(
            size: 17,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(
            "images/cv3d1.png",
            scale: 3.5,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 35.0,
              right: 35,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 2.6,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
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
                      Tab(text: "Detail"),
                      Tab(text: "Tentang"),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3.1,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TabBarView(
                        controller: controller,
                        children: const [
                          Detail(),
                          Tentang(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Tentang extends StatefulWidget {
  const Tentang({super.key});

  @override
  State<Tentang> createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Soe Hok Gie adalah seorang mahasiswa di FSUI. Saat menjadi mahasiswa, ia dikenal rajin menulis dan mempublikasikan beberapa pikirannya di berbagai media cetak seperti surat kabar. Semua karya Gie kemudian dijadikan buku yang sedang kamu pegang. Melalui buku ini, kamu akan mengetahui apa saja tulisan yang sudah dibuat oleh almarhum Gie.",
            style: DeskripsiBuku(size: 13),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "- Marceline Anderson",
            style: DeskripsiBuku(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

List<String> list = <String>[
  '7 Hari',
  '30 Hari',
  '1 Semester',
];

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  String waktupinjam = list.first;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ListTile(
            leading: Text(
              "Ketersediaan",
              style: DeskripsiBuku(color: Colors.grey),
            ),
            trailing: Text("Tersedia",
                style: DeskripsiBuku(
                  color: Colors.green,
                )),
          ),
          const ListTile(
            leading: Text(
              "ID Buku",
              style: DeskripsiBuku(color: Colors.grey),
            ),
            trailing: Text("18614",
                style: DeskripsiBuku(
                  color: Colors.black,
                )),
          ),
          ListTile(
            leading: const Text(
              "Lama Peminjaman",
              style: DeskripsiBuku(color: Colors.grey),
            ),
            trailing: DropdownButton<String>(
              value: waktupinjam,
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: const Color(0xff134074),
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  waktupinjam = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12,
              top: 15,
            ),
            child: ElevatedButton(
          child:const  Text('Pinjam Buku Sekarang'),
          onPressed: () {
            // showDialog(
            //   context: context,
            //   barrierDismissible: false,
            //   builder: (BuildContext context) {
            //     return const LoadingDialog();
            //   },
            // );

            Future.delayed( const Duration(seconds: 1), () {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const SuccessDialog();
                },
              );
            });
          },
        ),
      ),
            // child: InkWell(
            //   onTap: () {
            //     showDialog(
            //       context: context,
            //       barrierDismissible: false,
            //       builder: (BuildContext context) {
            //         return LoadingDialog();
            //       },
            //     );
            //   },
            //   child: Container(
            //     height: 40,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //         color: const Color(0xff339989),
            //         borderRadius: BorderRadius.circular(15)),
            //     child: const Center(
            //       child: Text("Mulai Pinjam",
            //           style: TextStyle(
            //             color: Colors.white,
            //           )),
            //     ),
            //   ),
            // ),
          
        ],
      ),
    );
  }
}
