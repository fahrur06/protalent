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
                    "assets/images/contactus1.jpg",
                  ),
                  alignment: Alignment.center,
                  fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width * 0.5,
          height: screenSize.height * 0.31,
          padding: EdgeInsets.only(
              right: screenSize.width * 0.30, left: screenSize.height * 0.10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      fontSize: 40,
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
