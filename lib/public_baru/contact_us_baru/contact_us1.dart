import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs1 extends StatefulWidget {
  const ContactUs1({Key? key}) : super(key: key);

  @override
  State<ContactUs1> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs1> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.42,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/bootcamp3.jpg",
                  ),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width * 0.5,
          height: screenSize.height * 0.31,
          padding: EdgeInsets.only(
              left: screenSize.width * 0.15, top: screenSize.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
