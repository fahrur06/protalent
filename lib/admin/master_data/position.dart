import 'package:flutter/material.dart';
import 'package:pro_talent/conts.dart';

class Position extends StatefulWidget {
  const Position({Key? key}) : super(key: key);

  @override
  State<Position> createState() => _PositionState();
}

class _PositionState extends State<Position> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width*0.64,
        color: Colors.blue,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenSize.width*0.2,
              color: Colors.grey,
              child: Text(
                "Talent Positions",
                style: TextStyle(
                    fontSize: 30,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: screenSize.width*0.6,
              height: 400,
              color: Colors.white70,
            )
          ],
        ),
      ),
    );
  }
}
