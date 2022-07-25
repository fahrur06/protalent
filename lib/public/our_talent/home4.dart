import 'package:flutter/material.dart';
import 'package:pro_talent/admin/const/text_homepage.dart';
import 'package:pro_talent/widget/expansionpanel_home4.dart';

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
      height: screenSize.height * 0.8,
      //color: Colors.green,
      child:
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              width: screenSize.width*0.9,
              height: screenSize.height * 0.09,
              color: Colors.white70,
              child: Text('Industry' ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 33,height: 1.5
              ),),
            ),
            const Divider(height: 3,thickness: 3,),
            Expanded(
              // width: screenSize.width*0.9,
              // height: screenSize.height * 0.65,

              //color: Colors.grey,
              child: Expansionpanel(),
            ),
          ],
        )
      //Expansionpanel(),
    );
  }
}


// Row(
// children: [
// Container(
// width: screenSize.width*0.45,
// color: Colors.blue,
// ),
// Container(
// width: screenSize.width*0.45,
// color: Colors.greenAccent,
// )
// ],
// ),