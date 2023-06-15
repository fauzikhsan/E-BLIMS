import 'package:flutter/material.dart';
import 'package:pboproject/widget/textStyle.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History", style: Head1()),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
            )),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Align(
                alignment: Alignment.center,
                child: Center(
                  child: Image.asset("images/empty.png"),
                ),
              ),
            ),
            const Text(
              "Ini jika kondisi halaman kosong 👌",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // ignore: use_full_hex_values_for_flutter_colors
                    color: const Color(0xfff0077b6),
                  ),
                  child: const Center(
                    child: Text(
                      "Oke ayo kita balik",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History", style: Head1()),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage(
                          "images/cv3d1.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const SizedBox(
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Buku Tentang Kehidupan Merunduk",
                          overflow: TextOverflow.ellipsis,
                          style: BookTitle(),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Marceline Anderson",
                          style: BookTitle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("Belum di ambil",
                            style: BookTitle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 6,
                        ),
                        Text("Lama meminjam : 30 Hari",
                            style: BookTitle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage(
                          "images/cv3d2.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const SizedBox(
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Manajemen Pemasaran",
                          overflow: TextOverflow.ellipsis,
                          style: BookTitle(),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Pengarang",
                          style: BookTitle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("Belum di ambil",
                            style: BookTitle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 6,
                        ),
                        Text("Lama meminjam : 7 Hari",
                            style: BookTitle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15)
            ],
          ),
        ),
      ),
    );
  }
}
