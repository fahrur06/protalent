import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_talent/admin/post/add_post.dart';
import 'package:pro_talent/const/text_homepage.dart';
import 'package:pro_talent/widget/expansionpanel_home4.dart';

import '../../conts_warna.dart';
import '../../widget/botton.dart';

class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
        width: screenSize.width * 0.9,
        height: screenSize.height * 0.75,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/blue-white-low-poly-triangle-shapes-background.jpg"),
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Text(
                  //   "We'd love to hear from you"
                  //       "\n"
                  //       "Wheter you have a question about features, trials, pricing, "
                  //       "need a demo, or anything else, "
                  //       "\n"
                  //       "our team is ready to answer all your questions",
                  //   style: TextStyle(
                  //     fontSize: 25,
                  //     height: 2,
                  //     fontWeight: FontWeight.w300,
                  //   ),
                  // ),

                  // TextButton(
                  //   style: ButtonStyle(
                  //     foregroundColor: MaterialStateProperty.all(Colors.red),
                  //     backgroundColor: MaterialStateProperty.all(Colors.white),
                  //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //       RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(20),
                  //         side: BorderSide(color: Colors.red)
                  //       ),
                  //     ),
                  //   ),
                  //   onPressed: () {},
                  //   child: const Text('Get in touch'),
                  // ),
                  Spacer(),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              border: Border.all(
                                color: kTextColor,
                                width: 50,
                              )),
                          height: screenSize.height * 0.7,
                          width: screenSize.width * 0.35,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Spacer(
                                  flex: 1,
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.phone, color: Colors.white),
                                    const SizedBox(width: 5),
                                    Text("CALL US",
                                        style: GoogleFonts.robotoCondensed(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                const Text(
                                    "Office : (021) 5795 - 8040, "
                                    "Email : info@eksad.com",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                const Spacer(
                                  flex: 2,
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.location_pin,
                                        color: Colors.white),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text("LOCATION",
                                        style: GoogleFonts.robotoCondensed(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                const Text(
                                    "The East Tower 19th Floor, "
                                    "Jl. DR. Ide Anak Agung Gde Agung, "
                                    "Kuningan, Kecamatan Setiabudi, "
                                    "Kota Jakarta Selatan, DKI Jakarta 12950",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                const Spacer(
                                  flex: 2,
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.access_time,
                                        color: Colors.white),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text("BUSINESS HOURS",
                                        style: GoogleFonts.robotoCondensed(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                const Text(
                                    "Mon–Fri   "
                                    "8.30 am–5.30 pm,  "
                                    "Sat&Sun Closed",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                const Spacer(
                                  flex: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),

                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 4,
                        blurRadius: 4,
                        blurStyle: BlurStyle.normal,
                        offset: Offset(3, 3),
                      )
                    ]),
                    height: screenSize.height * 0.6,
                    width: screenSize.width * 0.3,
                    child: Column(
                      children: [
                        const Spacer(
                          flex: 1,
                        ),
                        Text(
                          "Contact Us",
                          style: GoogleFonts.robotoCondensed(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: kTextColor),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Enter Your Name"),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter A Valid Email Address"),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(hintText: "Enter Messages"),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                      Container(
                          child: Botton_tombol(
                              title: "SUBMIT",
                              arah: AddPost(),
                            )),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  Spacer()
                ],
              ),
          ],
        ),
      ),
    );
  }
}
