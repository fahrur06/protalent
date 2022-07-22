import 'package:flutter/material.dart';
import 'package:pro_talent/admin/const/text_homepage.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      width: screenSize.width,
      height: screenSize.height * 0.8,
      color: Colors.grey,
      child: Row(
        children: [
          Container(
            width: screenSize.width*0.45,
            color: Colors.green,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 1,),
                Row(
                  children: [
                    Container(
                      width: screenSize.width*0.1,
                      height: 40,
                      color: Colors.white,
                    ),
                    Container(width: screenSize.width*0.1,
                      height: 40,
                      color: Colors.white70,),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: screenSize.width*0.13,
                      height: 40,
                      color: Colors.blue,
                    ),
                    Container(width: screenSize.width*0.1,
                      height: 40,
                      color: Colors.white,),
                  ],
                ),
                Container(
                  width: screenSize.width*0.37,
                  height: 300,
                  color: Colors.blueAccent,
                ),
                Spacer(flex: 1,)
              ],
            ),
          ),
          Container(
            width: screenSize.width*0.45,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
