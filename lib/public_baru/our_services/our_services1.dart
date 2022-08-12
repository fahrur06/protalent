import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:pro_talent/animation/animasi_kiri_kanan.dart';

class OurServices1 extends StatefulWidget {
  const OurServices1({Key? key}) : super(key: key);

  @override
  State<OurServices1> createState() => _OurServices1State();
}

class _OurServices1State extends State<OurServices1> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          child: Stack(
            children: [
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/ourservice.jpeg",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 550,
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    // begin: FractionalOffset.topCenter,
                    // end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.blueGrey.withOpacity(0.30),
                      Colors.blueGrey.withOpacity(0.30),
                    ],
                    stops: [0.0, 1.0],
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: screenSize.width * 0.5,
                  height: screenSize.height * 0.65,
                  padding: EdgeInsets.only(
                      left: screenSize.width * 0.1,
                      top: screenSize.height * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ShowUpAnimation(
                          delayStart: Duration(seconds: 1),
                          direction: Direction.horizontal,
                          child: Text(
                            'Find & Get the Best Talent',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        width: screenSize.width * 0.32,
                        height: screenSize.height * 0.17,
                        child: ShowUpAnimation(
                          delayStart: Duration(seconds: 1),
                          curve: Curves.bounceIn,
                          direction: Direction.horizontal,
                          offset: -0.2,
                          child: Center(
                            child: Text(
                              'Register for free now , Find our Best Talent and enjoy our unlimited hires at low cost',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing: 1.8,
                                  height: 1.6,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: screenSize.width * 0.15,
                        height: screenSize.height * 0.08,
                        child: ShowUpAnimation(
                          delayStart: Duration(seconds: 1),
                          curve: Curves.bounceIn,
                          direction: Direction.horizontal,
                          offset: -0.2,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'FREE REGISTER',
                              style: TextStyle(fontSize: 19, letterSpacing: 2),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff1e5ea8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 400,
          width: screenSize.width,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: screenSize.width * 0.15,
                        height: screenSize.height * 0.08,
                        child: Text(
                          "Our Services",
                          style: GoogleFonts.robotoCondensed(
                            color: Color(0xff1e5ea8),
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 1000,
                        child: Text(
                          "We adopt a simple approach - we listen. Our consultants listen to our candidates and our client. The consultants are match-makers and work to meet the needs of both the client and the candidate to make the perfect fit. Of course, please feel free to ask us about any blended solution that appeals to you and we will try to make it happen.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.robotoCondensed(
                            color: Color(0xff111111),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: screenSize.width * 0.2,
                            child: Column(
                              children: [
                                Animasi_Kiri_Kanan(
                                  screenSize: screenSize,
                                  widget: Container(
                                  width: 60,
                                  height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 4, 97, 184),
                                          width: 1),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/icons/icon-service-1.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: ShowUpAnimation(
                                    delayStart: Duration(seconds: 1),
                                    direction: Direction.horizontal,
                                    child: Text(
                                      "RETAINED SEARCH",
                                      style: GoogleFonts.robotoCondensed(
                                        color: Color(0xff1e5ea8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 200,
                                  child: ShowUpAnimation(
                                    delayStart: Duration(seconds: 1),
                                    direction: Direction.horizontal,
                                    child: Text(
                                      "We not only keep our eyes wide open for talented individuals, we make it an active endeavour. One that digs deeper to find you that star employee ahead of your competition.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.robotoCondensed(
                                        color: Color(0xff111111),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.2,
                            child: Column(
                              children: [
                                Animasi_Kiri_Kanan(
                                  screenSize: screenSize,
                                  widget: Container(
                                  width: 60,
                                  height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 4, 97, 184),
                                          width: 1),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/icons/icon-service-2.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: ShowUpAnimation(
                                    delayStart: Duration(seconds: 1),
                                    direction: Direction.horizontal,
                                    child: Text(
                                      "DEDICATED SERVICES",
                                      style: GoogleFonts.robotoCondensed(
                                        color: Color(0xff1e5ea8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 200,
                                  child: ShowUpAnimation(
                                    delayStart: Duration(seconds: 1),
                                    direction: Direction.horizontal,
                                    child: Text(
                                      "Our dedicated team of recruiters help fulfill your critical hiring needs in the mid-level and executive positions making the recruitment cycle short and efficient.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.robotoCondensed(
                                        color: Color(0xff111111),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.2,
                            child: Column(
                              children: [
                                Animasi_Kiri_Kanan(
                                  screenSize: screenSize,
                                  widget: Container(
                                  width: 60,
                                  height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 4, 97, 184),
                                          width: 1),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/icons/icon-service-3.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: ShowUpAnimation(
                                    delayStart: Duration(seconds: 1),
                                    direction: Direction.horizontal,
                                    child: Text(
                                      "CONTRACT SERVICES",
                                      style: GoogleFonts.robotoCondensed(
                                        color: Color(0xff1e5ea8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 200,
                                  child: ShowUpAnimation(
                                    delayStart: Duration(seconds: 1),
                                    direction: Direction.horizontal,
                                    child: Text(
                                      "Time sensitive projects are treated with urgency to provide skilled technical resources needed for quick and cost-effective turnaround.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.robotoCondensed(
                                        color: Color(0xff111111),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.2,
                            child: Column(
                              children: [
                                Animasi_Kiri_Kanan(
                                  screenSize: screenSize,
                                  widget: Container(
                                  width: 60,
                                  height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 4, 97, 184),
                                          width: 1),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/icons/icon-service-4.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: ShowUpAnimation(
                                    delayStart: Duration(seconds: 1),
                                    direction: Direction.horizontal,
                                    child: Text(
                                      "RECRUITMENT PROCESS OUTSOURCING",
                                      style: GoogleFonts.robotoCondensed(
                                        color: Color(0xff1e5ea8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 200,
                                  child: ShowUpAnimation(
                                    delayStart: Duration(seconds: 1),
                                    direction: Direction.horizontal,
                                    child: Text(
                                      "Hire the best without ever having to face the logistics. From the very beginning till actually getting your next 'rockstar' employees to walk in and take their positions on your floors.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.robotoCondensed(
                                        color: Color(0xff111111),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      
      ],
    );
  }
}
