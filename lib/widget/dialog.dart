import 'package:flutter/material.dart';
import 'package:pboproject/screen/subscreen/semester2.dart';
import 'package:pboproject/widget/textStyle.dart';

class PopupDialog extends StatelessWidget {
  const PopupDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xfff8f9fa),
      title: const Text(
        'Masukan ID dan Nama Anggota',
        style: HeaderHome(),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.only(left: 25, right: 20),
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Nama",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.only(left: 25, right: 20),
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "ID Anggota",
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: const Text(
            'Gajadi deh',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        TextButton(
          child: const Text(
            'Masuk',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Semester2()));
          },
        ),
      ],
    );
  }
}

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dialog(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }
}

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dialog(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 50,
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Silahkan datang ke perpus untuk mengambil buku 🤩',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "Poppins"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
