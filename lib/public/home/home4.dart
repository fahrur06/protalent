import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_talent/const/text_homepage.dart';
import 'package:pro_talent/widget/expansionpanel_home4.dart';

import '../../conts_warna.dart';

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
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 100),
        width: screenSize.width * 0.9,
        height: screenSize.height * 0.5,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/blue-white-low-poly-triangle-shapes-background.jpg"),
              fit: BoxFit.fill),
        ),
       
        child: Stack(
            children: [
              Container(
                width: screenSize.width * 0.9,
                height: screenSize.height * 0.5,
                child:  Column(
                  children: [
                    Text(
                      "We'd love to hear from you"
                          "\n"
                          "Wheter you have a question about features, trials, pricing, "
                          "need a demo, or anything else, "
                          "\n"
                          "our team is ready to answer all your questions",
                      style: TextStyle(
                        fontSize: 25,
                        height: 2,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.red)
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Get in touch'),
                  ),
          ]
          ),
              ),
        ]),
      ),
    );
  }
}
