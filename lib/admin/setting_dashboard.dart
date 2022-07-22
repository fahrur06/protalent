import 'package:flutter/material.dart';
import 'package:pro_talent/login.dart';
import '../botton.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingDashboard extends StatelessWidget {
  const SettingDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Color.fromRGBO(238, 224, 224, 1),
      height: 1000,
      padding: EdgeInsets.only(left: 100),
      width: screenSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "General Setting",
            textAlign: TextAlign.start,
            style: GoogleFonts.didactGothic(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Container(
            color: Colors.white,
            height: 500,
            width: 1000,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Site Profile",
                        style: GoogleFonts.didactGothic(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 0,
                      width: 750,
                    ),
                    Botton_tombol(
                      title: "Save Setting",
                      arah: login(),
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 0,
                  color: Colors.grey,
                ),
                Spacer(
                  flex: 1,
                ),
                Row(
                  children: [
                    Text("Site icon",
                        style: GoogleFonts.didactGothic(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 0,
                      width: 100,
                    ),
                    Text("Site title",
                        style: GoogleFonts.didactGothic(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      child: Image.asset("assets/logo/logo_protalent.png"),
                    ),
                    SizedBox(
                      height: 0,
                      width: 30,
                    ),
                    Container(
                      height: 50,
                      width: 500,
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "Protalent"),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 0,
                      width: 170,
                    ),
                    Text("Site tagline",
                        style: GoogleFonts.didactGothic(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        height: 30,
                        width: 100,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              primary: Colors.white,
                              // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child: Text(
                              "Change",
                              style: TextStyle(color: Colors.black),
                            ))),
                    SizedBox(
                      height: 0,
                      width: 70,
                    ),
                    Container(
                      height: 50,
                      width: 500,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Talent Ready from Eksad"),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        height: 30,
                        width: 100,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              primary: Colors.white,
                              // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child: Text(
                              "Remove",
                              style: TextStyle(color: Colors.red),
                            ))),
                    SizedBox(
                      height: 0,
                      width: 70,
                    ),
                    Text("In a few words, explain what this site is about.",
                        style: GoogleFonts.didactGothic(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                  ],
                ),
                SizedBox(
                  height: 30,
                  width: 0,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 0,
                    ),
                    Text("Email address",
                        style: GoogleFonts.didactGothic(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Spacer(
                      flex: 3,
                    ),
                    Container(
                        height: 50,
                        width: 200,
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 20,
                            // color: Colors.grey,
                            backgroundColor: Colors.grey,
                            // fontWeight: FontWeight.w600,
                          ),
                          decoration:
                              InputDecoration(hintText: "xxxxxx@xxxxx.xxxx"),
                        )),
                    Spacer(
                      flex: 30,
                    ),
                  ],
                ),
                Row(
                  children: [
                    // Container(
                    //     height: 30,
                    //     width: 200,
                    //     child: ElevatedButton(
                    //         onPressed: () {},
                    //         style: ElevatedButton.styleFrom(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(5),
                    //           ),
                    //           primary: Colors.white,
                    //           // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                    //         ),
                    //         child: Text(
                    //           "+ Add custom address",
                    //           style: TextStyle(color: Colors.black),
                    //         ))),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 0,
                    ),
                    Text("No Office",
                        style: GoogleFonts.didactGothic(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Spacer(
                      flex: 5,
                    ),
                    Container(
                        height: 50,
                        width: 200,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 20,
                            // color: Colors.grey,
                            backgroundColor: Colors.grey,
                            // fontWeight: FontWeight.w600,
                          ),
                          decoration:
                              InputDecoration(hintText: "02x-xxxx.xxxx"),
                        )),
                    Spacer(
                      flex: 30,
                    ),
                  ],
                ),
                Row(
                  children: [
                    // Container(
                    //     height: 30,
                    //     width: 200,
                    //     child: ElevatedButton(
                    //         onPressed: () {},
                    //         style: ElevatedButton.styleFrom(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(5),
                    //           ),
                    //           primary: Colors.white,
                    //           // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                    //         ),
                    //         child: Text(
                    //           "+ Add Number",
                    //           style: TextStyle(color: Colors.black),
                    //         ))),
                  ],
                ),
                Spacer(
                  flex: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
