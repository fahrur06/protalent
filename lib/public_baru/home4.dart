import 'package:flutter/material.dart';

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
      height: 700,
      width: screenSize.width,
      child: Column(
        children: [
          Container(
            height: 130,
            color: Color(0xff1e5ea8),
            width: screenSize.width,
            child: Column(
              children: <Widget>[
                SizedBox(height: 15,),
                Text('Technologies Experties',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15,),
                Text('Our Talent',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: screenSize.width*0.6,
          )
        ],
      ),
    );
  }
}
