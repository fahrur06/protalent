import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Career1 extends StatefulWidget {
  const Career1({Key? key}) : super(key: key);

  @override
  State<Career1> createState() => _Career1State();
}

class _Career1State extends State<Career1> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height*0.42,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/career1.jpg",),alignment: Alignment.bottomCenter,fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width*0.5,
          height: screenSize.height*0.31,
          padding: EdgeInsets.only(left: screenSize.width * 0.15, top: screenSize.height * 0.02),

          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
          child: Text(
          'Career',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),overflow: TextOverflow.ellipsis,),
          ),
        ],
        ),
        ),
      ],
    );

  }
}