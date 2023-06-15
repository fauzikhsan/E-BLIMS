import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pboproject/screen/subscreen/semester1.dart';
import 'package:pboproject/widget/dialog.dart';
import 'package:pboproject/widget/textStyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List semester = [
    "Semester 1",
    "Semester 2",
    "Semester 3",
    "Semester 4",
    "Semester 5",
    "Semester 6",
    "Semester 7",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff8f9fa),
      appBar: AppBar(
          backgroundColor: const Color(0xffffffff),
      
          title: const Text(
            "e-BLiMS 🧐",
            style: Head1(),
          ),
          elevation: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                    Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => const Semester1()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(
                            1,
                            2,
                          ),
                        ),
                      ]),
                  child: const Center(
                    child: Text(
                      "Semester 1",
                      style: BookTitle(size: 16, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const PopupDialog();
                    },
                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(
                            1,
                            2,
                          ),
                        ),
                      ]),
                  child: const Center(
                    child: Text(
                      "Semester 2",
                      style: BookTitle(size: 16, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(
                          1,
                          2,
                        ),
                      ),
                    ]),
                child: const Center(
                  child: Text(
                    "Semester 3",
                    style: BookTitle(size: 16, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(
                          1,
                          2,
                        ),
                      ),
                    ]),
                child: const Center(
                  child: Text(
                    "Semester 4",
                    style: BookTitle(size: 16, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(
                          1,
                          2,
                        ),
                      ),
                    ]),
                child: const Center(
                  child: Text(
                    "Semester 5",
                    style: BookTitle(size: 16, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(
                          1,
                          2,
                        ),
                      ),
                    ]),
                child: const Center(
                  child: Text(
                    "Semester 6",
                    style: BookTitle(size: 16, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(
                          1,
                          2,
                        ),
                      ),
                    ]),
                child: const Center(
                  child: Text(
                    "Semester 7",
                    style: BookTitle(size: 16, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(
                          1,
                          2,
                        ),
                      ),
                    ]),
                child: const Center(
                  child: Text(
                    "Jurnal & Referensi",
                    style: BookTitle(size: 16, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(
                          1,
                          2,
                        ),
                      ),
                    ]),
                child: const Center(
                  child: Text(
                    "Novel",
                    style: BookTitle(size: 16, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(
                          1,
                          2,
                        ),
                      ),
                    ]),
                child: const Center(
                  child: Text(
                    "Komik",
                    style: BookTitle(size: 16, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
