import 'package:flutter/material.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height*0.2,
      //color: Colors.grey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.273,vertical: 53),
        width: screenSize.width*0.5,
        height: screenSize.height*0.05,
        //: Colors.blue,
        child: TextButton(
            onPressed: (){},
            child: Text('Discover more about Industries in ProTalent',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                ),),
          style: TextButton.styleFrom(
              primary: Color.fromARGB(255, 39, 36, 182),
              shadowColor: Colors.white,
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            onSurface: Colors.white,
          ),
        ),
      ),
    );
  }
}
