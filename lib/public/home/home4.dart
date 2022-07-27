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
        width: screenSize.width * 0.9,
        height: screenSize.height * 0.5,
        color: Colors.green,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Stack(children: [
          SizedBox(
            width: screenSize.width,
            child: Image.asset(
              "assets/images/blue-white-low-poly-triangle-shapes-background.jpg",
            ),
          ),
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
            style: TextButton.styleFrom(
              primary: Colors.black,
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: () {},
            child: const Text('Get in touch'),
          ),
        ]),
      ),
    );
  }
}
