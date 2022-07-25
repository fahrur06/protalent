import 'package:flutter/material.dart';
import 'package:pro_talent/admin/const/text_homepage.dart';

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
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05,vertical: screenSize.height*0.02),
      width: screenSize.width,
      height: screenSize.height * 0.6,
      color: Colors.green,
      child: Row(
        children: [
          Container(
            width: screenSize.width*0.45,
            color: Colors.blue,
          ),
          Container(
            width: screenSize.width*0.45,
            color: Colors.greenAccent,
          )
        ],
      ),
    );
  }
}
