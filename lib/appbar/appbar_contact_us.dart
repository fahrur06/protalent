import 'package:flutter/material.dart';
import 'package:pro_talent/conts_warna.dart';
import 'package:pro_talent/homepage.dart';
import 'package:pro_talent/public/contact_us/ContactUs.dart';
import 'package:pro_talent/register.dart';
import 'package:pro_talent/login.dart';
import 'package:pro_talent/widget/dropdown_appbar.dart';
import 'package:pro_talent/widget/botton.dart';
import 'package:pro_talent/public/post/post.dart';

AppBar AppbarHomeSmall(Size screenSize) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: kPrimaryColor, width: 1, style: BorderStyle.solid),
        ),
      ),
      child: Row(
        children: [
          const Spacer(
            flex: 1,
          ),
          Container(
            child:
            Container(child: Image.asset("assets/logo/logo_protalent.png"),height: 50,width: 150,),
          ),
          const Spacer(
            flex: 3,
          ),
          const SizedBox(
            height: 50,
            width: 150,
            child: DropDownHome(),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    ),
  );
}

AppBar AppbarHomeLarge(Size screenSize, BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 80,
    leadingWidth: screenSize.width * 0.15,
    leading: Row(
      children: [
        Container(
          width: screenSize.width * 0.015,
        ),
        Container(
          width: screenSize.width * 0.13,
          height: 50,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/logo/logo_protalent.png'),
                fit: BoxFit.fill),
          ),
        ),
      ],
    ),
    title: Row(
      children: [
        Spacer(
          flex: 4,
        ),
        ButtonAppbar(arah: HomePage(), menu: 'Home',warna: Colors.black,),
        Spacer(
          flex: 1,
        ),
        ButtonAppbar(arah: HomePage(), menu: 'About Us',warna: Colors.black,),
        Spacer(
          flex: 1,
        ),
        ButtonAppbar(arah: HomePage(), menu: 'Our Talent',warna: Colors.black,),
        Spacer(
          flex: 1,
        ),
        ButtonAppbar(arah: Post(), menu: 'Post',warna: Colors.black,),
        Spacer(
          flex: 1,
        ),
        ButtonAppbar(arah: ContactUs(), menu: 'Contact Us',warna: Colors.blue,),
        Spacer(
          flex: 3,
        ),
      ],
    ),
    actions: [
      Row(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const login(),
                ),
              );
            },
            child: Text(
              'Login',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
            width: screenSize.width * 0.006,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Register()));
            },
            child: Text(
              'Register',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 17, 255)),
          ),
          Container(
            width: screenSize.width * 0.02,
          )
        ],
      )
    ],
  );
}
