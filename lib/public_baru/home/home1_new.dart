import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_talent/widget/button_color.dart';
import 'package:show_up_animation/show_up_animation.dart';

class HomeNew1 extends StatelessWidget {
  const HomeNew1({Key? key}) : super(key: key);

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
                    "assets/images/home2.jpg",
                  ),
                  fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.65,
          padding: EdgeInsets.only(
              right: screenSize.width * 0.48,
              top: screenSize.height * 0.09),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.13,
                child: ShowUpAnimation(
                  delayStart: Duration(seconds: 1),
                  direction: Direction.horizontal,
                  child: Text(
                    'EMPOWER YOUR BUSINESS FOR SUCCESS.',
                    style: GoogleFonts.poppins(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: screenSize.width * 0.32,
                height: screenSize.height * 0.30,
                child: ShowUpAnimation(
                  delayStart: Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: -0.2,
                  child: Text(
                    'If you’ve got the combination of the most sought-after IT'
                    ' expertise, which is augmented by new technologies that provide you with the '
                    'edge over your competition, you can create the future you want to see. Our'
                    ' top-of-the-line IT professional outsourcing and managed services allow companies '
                    'to plan for what’s to come.',
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        letterSpacing: 2,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: screenSize.width * 0.13,
                height: screenSize.height * 0.07,
                child: ShowUpAnimation(
                  delayStart: Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: -0.2,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                      child: Text(
                        'CONTACT US',
                        style: TextStyle(
                            fontSize: 19,
                            letterSpacing: 2,
                            color: Colors.white,
                        fontWeight: FontWeight.w500),
                      ),
                    style: DefaultColors(),
                  ),
                ),
              )
            ],
          ),
        ),
      
      ],
    );
  }
}
