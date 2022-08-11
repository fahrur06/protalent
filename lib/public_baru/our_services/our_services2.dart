import 'package:flutter/material.dart';
import 'package:pro_talent/widget/expansion_ourservices2.dart';


class OurServices2 extends StatefulWidget {
  const OurServices2({Key? key}) : super(key: key);

  @override
  State<OurServices2> createState() => _OurServices2State();
}

class _OurServices2State extends State<OurServices2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 700,
      width: screenSize.width ,
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
            child: ExpansionOurServices2(),
          )
        ],
      ),
    );

  }
}
