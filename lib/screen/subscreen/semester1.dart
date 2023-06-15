import 'package:flutter/material.dart';

class Semester1 extends StatefulWidget {
  const Semester1({super.key});

  @override
  State<Semester1> createState() => _Semester1State();
}

class _Semester1State extends State<Semester1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.only(top: 200.0, right: 25, left: 25),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Image.asset("images/empty.png"),
              ),
            ),
            const Text(
              "Halaman ini muncul, artinya kami belum selesai atau belum sempat menyelesaikannya karena keterbatasan waktu 😁",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: (){
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
