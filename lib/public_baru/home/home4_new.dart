import 'package:flutter/material.dart';
import 'package:pro_talent/widget/expansion_home4.dart';

class HomeNew4 extends StatefulWidget {
  const HomeNew4({Key? key}) : super(key: key);

  @override
  State<HomeNew4> createState() => _HomeNew4State();
}

class _HomeNew4State extends State<HomeNew4> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 893,
      width: screenSize.width,
      child: Column(
        children: [
          Container(
            height: 130,
            color: Color(0xff1e5ea8),
            width: screenSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('VARIOUS INDUSTRY AND SECTORS',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Each industry has its specific needs, we are'
                    ' ready to help to provide services according to its industry'
                    ', from initial discussions to providing expert consultants.',
                  style: TextStyle(
                      fontSize: 18,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox()
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            width: screenSize.width*0.6,
            color: Colors.white,
            child: ExpansionHome4(),
          ),
        ],
      ),
    );

    return Container(
      height: 873,
      width: screenSize.width,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 150,
            width: screenSize.width,
            color: Color(0xff1e5ea8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: (
                      Text("VARIOUS INDUSTRY AND SECTORS",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.1),
                      )
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.15,vertical: 20),
                  child: Text('Each industry has its specific needs, we are'
                      ' ready to help to provide services according to its industry'
                      ', from initial discussions to providing expert consultants.',
                    style: TextStyle(fontSize: 21,color: Colors.white),textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),

          Container(
            width: screenSize.width*0.5,
            child: ExpansionHome4(),
          ),
        ],
      ),
    );
  }
}