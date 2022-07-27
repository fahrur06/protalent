import 'package:flutter/material.dart';
import 'package:pro_talent/const/text_homepage.dart';

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
      height: screenSize.height * 0.6,
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            width: screenSize.width*0.9,
            height: screenSize.height*0.2,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Mengapa ',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                Text('HARUS ',style: TextStyle(color: Color.fromARGB(255, 26, 32, 107),fontSize: 32,fontWeight: FontWeight.bold),),
                Text('Hire Talenta ',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                Text('ProTalent ',style: TextStyle(color: Color.fromARGB(255, 26, 32, 107),fontSize: 32,fontWeight: FontWeight.bold),),
                Text('?',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      )
    );
  }
}

