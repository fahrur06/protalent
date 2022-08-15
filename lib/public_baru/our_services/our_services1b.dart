import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_talent/animation/animasi_kiri_kanan.dart';
import 'package:show_up_animation/show_up_animation.dart';

class OurServices1b extends StatefulWidget {
  const OurServices1b({Key? key}) : super(key: key);

  @override
  State<OurServices1b> createState() => _OurServices1bState();
}

class _OurServices1bState extends State<OurServices1b> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 400,
      width: screenSize.width,
      color: Colors.white,
      child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(height: 15,),
              Container(
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
                children: [
                  Container(
                    width: screenSize.width * 0.2,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: screenSize.height * 0.01),
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(100),
                                border: Border.all(
                                    color: Color.fromARGB(
                                        255, 4, 97, 184),
                                    width: 1),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/icons/icon-service-1.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          padding: EdgeInsets.only(top: 5),
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
                          padding: EdgeInsets.only(top: 10),
                          width: 220,
                          height: 100,
                          child: ShowUpAnimation(
                            delayStart: Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "We not only keep our eyes wide open for talented individuals, but we also make it an active endeavor. One that digs deeper to find you that star employee ahead of your competition.",
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
                        Container(
                          padding: EdgeInsets.only(
                              top: screenSize.height * 0.01),
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(100),
                                border: Border.all(
                                    color: Color.fromARGB(
                                        255, 4, 97, 184),
                                    width: 1),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/icons/icon-service-2.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          padding: EdgeInsets.only(top: 5),
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
                          padding: EdgeInsets.only(top: 10),
                          width: 200,
                          height: 100,
                          child: ShowUpAnimation(
                            delayStart: Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "Our dedicated team of recruiters helps fulfill your critical hiring needs in the mid-level and executive positions making the recruitment cycle short and efficient.",
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
                        Container(
                          padding: EdgeInsets.only(
                              top: screenSize.height * 0.01),
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(100),
                                border: Border.all(
                                    color: Color.fromARGB(
                                        255, 4, 97, 184),
                                    width: 1),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/icons/icon-service-3.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          padding: EdgeInsets.only(top: 5),
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
                          padding: EdgeInsets.only(top: 10),
                          width: 200,
                          height: 100,
                          child: ShowUpAnimation(
                            delayStart: Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "Time-sensitive projects are treated with urgency to provide skilled technical resources needed for quick and cost-effective turnaround.",
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
                        Container(
                          padding: EdgeInsets.only(
                              top: screenSize.height * 0.01),
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(100),
                                border: Border.all(
                                    color: Color.fromARGB(
                                        255, 4, 97, 184),
                                    width: 1),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/icons/icon-service-4.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          padding: EdgeInsets.only(top: 5),
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
                          padding: EdgeInsets.only(top: 10),
                          width: 220,
                          height: 100,
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
