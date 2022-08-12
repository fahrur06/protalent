import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_talent/widget/button_color.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:pro_talent/animation/animasi_kiri_kanan.dart';

class OurServices1a extends StatefulWidget {
  const OurServices1a({Key? key}) : super(key: key);

  @override
  State<OurServices1a> createState() => _OurServices1aState();
}

class _OurServices1aState extends State<OurServices1a> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
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
          width: screenSize.width,
          height: screenSize.height * 0.7,
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              colors: [
                Colors.blueGrey.withOpacity(0.30),
                Colors.blueGrey.withOpacity(0.30),
              ],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Container(
                  height: screenSize.height * 0.10,
                  child: ShowUpAnimation(
                    delayStart: Duration(seconds: 1),
                    direction: Direction.horizontal,
                    child: Text(
                      'Find & Get the Best Talent',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: screenSize.width * 0.28,
                  height: screenSize.height * 0.20,
                  child: ShowUpAnimation(
                    delayStart: Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.horizontal,
                    offset: -0.2,
                    child: Text(
                      'Register for free now , Find our Best Talent and enjoy our unlimited hires at low cost',
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1.8,
                          height: 1.4,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: ShowUpAnimation(
                    delayStart: Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.horizontal,
                    offset: -0.2,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        style: DefaultColors(),
                        child: Text(
                          'FREE REGISTER',
                          style: TextStyle(
                              fontSize: 19,
                              // letterSpacing: 2,
                              color: Colors.white),
                        ),
                        ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
