import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pro_talent/admin/side_talent.dart';

import 'desc_talent.dart';

class MainDashboard extends StatelessWidget {
  MainDashboard({Key? key}) : super(key: key);

  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Container(
          padding: EdgeInsets.all(50),
          color: Colors.grey[200],
          child: Center(
            child: Column(
              children: [
                TabBar(
                    labelColor: Color(0xFF214B9A),
                    indicatorColor: Color(0xFF214B9A),
                    tabs: [
                      Container(
                        height: 120,
                        child: Tab(
                          icon: Icon(
                            Icons.person,
                            size: 50,
                          ),
                          text: "ALL",
                        ),
                      ),
                      Container(
                        height: 120,
                        child: Tab(
                          icon: Icon(
                            Icons.person,
                            size: 50,
                          ),
                          text: "Available",
                        ),
                      ),
                      Container(
                        height: 120,
                        child: Tab(
                          icon: Icon(
                            Icons.person,
                            size: 50,
                          ),
                          text: "Hired",
                        ),
                      )
                    ])
                // TabBar(tabs: [
                //   Container(
                //     height: 120,
                //     child: Tab(
                //       child: pilihan1(
                //         title: "ALL",
                //         colorbackground: Color(0xff214B9A),
                //         colortitle: Colors.white,
                //       ),
                //     ),
                //   ),
                //   Container(
                //     height: 120,
                //     child: Tab(
                //       child: pilihan1(
                //         title: "Available",
                //         colorbackground: Colors.white,
                //         colortitle: Color(0xff214B9A),
                //       ),
                //     ),
                //   ),
                //   Container(
                //     height: 120,
                //     child: Tab(
                //       child: pilihan1(
                //           title: "Hired",
                //           colorbackground: Colors.white,
                //           colortitle: Color(0xff214B9A)),
                //     ),
                //   )
                // ]),
                ,
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 50,
                        crossAxisSpacing: 50,
                        children: [
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                        ],
                      ),
                      GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 50,
                        crossAxisSpacing: 50,
                        children: [
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                        ],
                      ),
                      GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 50,
                        crossAxisSpacing: 50,
                        children: [
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                          Profil(),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Profil extends StatelessWidget {
  const Profil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SideMenuTalent()));
      },
      child: Container(
        height: 370,
        width: 310,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Talent!",
                style: TextStyle(
                  color: Color(0xff01FF1A),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/fotoprofil.png"),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Morgan James",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Image.asset("assets/icons/centangbiru.png")
                          ],
                        ),
                        Text("Male, 26 years old"),
                        Text("7 years of experience"),
                        Row(
                          children: [
                            Text(
                              "100 % match",
                              style: TextStyle(
                                color: Color(0xff01FF1A),
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              size: 18,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Icon(Icons.bookmark_border)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Skills",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    child: Text("JavaScript"),
                    color: Colors.grey[200],
                    padding: EdgeInsets.all(5),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: Text("PHP"),
                    color: Colors.grey[200],
                    padding: EdgeInsets.all(5),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: Text("Python"),
                    color: Colors.grey[200],
                    padding: EdgeInsets.all(5),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Text("and 6 more"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Expected Salary",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "IDR 12.000.000 nett",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF214B9A),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: Text(
                      "Non Negotiable",
                      style: TextStyle(color: Colors.red),
                    ),
                    color: Colors.red[200],
                    padding: EdgeInsets.all(5),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Latest Experience",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Technical Manager | Manager",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text("L-Commerce Indonesia"),
              Text("Sep 2013 - Jan 2020"),
            ],
          ),
        ),
      ),
    );
  }
}

class pilihan1 extends StatelessWidget {
  pilihan1({
    Key? key,
    required this.title,
    required this.colorbackground,
    required this.colortitle,
  }) : super(key: key);

  final String title;
  final Color colorbackground;
  final Color colortitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colorbackground,
          ),
          height: 110,
          width: 220,
          child: Padding(
            padding: const EdgeInsets.only(top: 9, bottom: 9),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: colortitle),
                  child: Icon(
                    Icons.person_pin_rounded,
                    size: 50,
                    color: colorbackground,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: colortitle,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );
  }
}
