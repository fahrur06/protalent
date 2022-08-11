import 'package:flutter/material.dart';
import 'package:pro_talent/animation/animasi_kanan_kiri.dart';
import 'package:pro_talent/animation/animasi_kiri_kanan.dart';


class HomeNew3 extends StatefulWidget {
  const HomeNew3({Key? key}) : super(key: key);

  @override
  State<HomeNew3> createState() => _HomeNew3State();
}

class _HomeNew3State extends State<HomeNew3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.8,
      width: screenSize.width,
      color: Colors.grey[200],
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text("Why Protalent ?",
              style: TextStyle(
                  fontSize: 36,
                  color: Color(0xff1e5ea8),
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: screenSize.height * 0.01),
                      width: screenSize.width * 0.5,
                      child: Animasi_Kiri_Kanan(screenSize: screenSize, widget: Image.asset('assets/icons/why1.png',height: 60,width: 60,))
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      width: 250,
                      height:45,
                      child: Text('We work as an extension of your team.',
                        style: TextStyle(color: Colors.blueAccent,fontSize: 17,letterSpacing: 1.1),textAlign: TextAlign.center,),),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                        width: 220,
                        height: 300,
                      child: Animasi_Kanan_Kiri(judul: 'WE WORK AS A TRUE EXTENSION OF '
                          'YOUR TEAM. WE BELIEVE IN ROLLING UP OUR SLEEVES, DIVING IN AND '
                          'WORKING TOGETHER TO DELIVER THE TOP-QUALITY, TAILORED SOLUTIONS'
                          ' OUR CLIENTS NEED TO GROW AND THRIVE.')
                    )
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        width: screenSize.width * 0.5,
                        child: Animasi_Kiri_Kanan(screenSize: screenSize, widget: Image.asset('assets/icons/why2.png',height: 60,width: 60,))
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      width: 250,
                      height:45,
                      child: Text('We offer smart tailored outsourcing and HR solutions.',
                        style: TextStyle(color: Colors.blueAccent,fontSize: 17,letterSpacing: 1.1),textAlign: TextAlign.center,),),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10),
                        width: 220,
                        height: 300,
                        child: Animasi_Kanan_Kiri(judul: 'THROUGH OUR TAILORED APPROACH, EXCEPTIONAL SUPPORT, AND FLEXIBLE SOLUTIONS, WE MAKE FINDING AND RETAINING TOP TALENTS EASIER AND SIMPLER.')
                    )
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        width: screenSize.width * 0.5,
                        child: Animasi_Kiri_Kanan(screenSize: screenSize, widget: Image.asset('assets/icons/why3.png',height: 60,width: 60,))
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      width: 250,
                      height:45,
                      child: Text('We have a rich outsourcing experience across various industries.',
                        style: TextStyle(color: Colors.blueAccent,fontSize: 17,letterSpacing: 1.1),textAlign: TextAlign.center,),),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10),
                        width: 220,
                        height: 300,
                        child: Animasi_Kanan_Kiri(judul: 'WE HAVE BEEN PROVIDING OUTSOURCING SOLUTIONS '
                            'TO VARIANCE CLIENTS FOR EIGHT YEARS NOW—HELPING THEM STREAMLINE THEIR OPERATIONS,'
                            ' SAVE VALUABLE TIME, AND CUT COSTS.')
                    )
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        width: screenSize.width * 0.5,
                        child: Animasi_Kiri_Kanan(screenSize: screenSize, widget: Image.asset('assets/icons/why4.png',height: 60,width: 60,))
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      width: 250,
                      height:45,
                      child: Text('We Are Expert recruites.',
                        style: TextStyle(color: Colors.blueAccent,fontSize: 17,letterSpacing: 1.1),textAlign: TextAlign.center,),),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10),
                        width: 220,
                        height: 300,
                        child: Animasi_Kanan_Kiri(judul: 'WE ARE A TEAM OF EXPERT RECRUITERS, WITH A '
                            'MISSION TO MATCH TALENTED PEOPLE WITH SUCCESSFUL EMPLOYERS. WE STRONGLY BELIEVE'
                            ' IN BUILDING A VALUE OF TRUST, HONESTY AND TRANSPARENCY WITH OUR CLIENTS SO AS '
                            'TO DEVELOP LONG TERM RELATIONSHIPS AND TO ADOPT FLEXIBLE APPROACH AS PER THEIR NEEDS.')
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
