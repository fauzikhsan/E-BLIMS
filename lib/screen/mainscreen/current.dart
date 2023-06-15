import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pboproject/widget/textStyle.dart';

import '../../widget/greeting.dart';

class CurrentRead extends StatefulWidget {
  const CurrentRead({super.key});

  @override
  State<CurrentRead> createState() => _CurrentReadState();
}

class _CurrentReadState extends State<CurrentRead> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60.0,
          right: 25,
          left: 25,
          bottom: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      greeting(),
                      style: const Greeting(),
                    ),
                    const Text(
                      "Last read",
                      style: Head1(fontWeight: FontWeight.normal),
                    ),
                    // const Text(
                    //   "Hi, Maudy Alfias",
                    //   style: HeaderHome(),
                    // ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff219ebc),
                        Color(0xff8ecae6),
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.person_pin,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[200]!,
              thickness: 4,
              height: 20,
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage(
                        "images/cv3d1.png",
                      ),
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    "Merunduk",
                    style: BookTitle(size: 17),
                  ),
                  subtitle: Text(
                    "Marceline Anderson",
                    style: LihatSemua(size: 15),
                  ),
                  trailing: Text("34 %", style: HeaderHome(size: 18)),
                ),
              ],
            ),
            const ListTile(
              title: Text(
                "RECENTLY OPENED",
                style: HeaderHome(size: 18),
              ),
              trailing: Text("See all", style: LihatSemua(),),
            ),
            // const Text(
            //   "Reading Now 😁",
            //   style: Head1(),
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 180,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage(
                                "images/cvro1.png",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Text(
                          "15 %",
                          style: HeaderHome(
                            size: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 180,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage(
                                "images/cvro2.png",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Text(
                          "15 %",
                          style: HeaderHome(
                            size: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 180,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage(
                                "images/cvro3.png",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Text(
                          "15 %",
                          style: HeaderHome(
                            size: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
