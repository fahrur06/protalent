import 'package:flutter/material.dart';
import 'package:pro_talent/conts.dart';
import 'package:pro_talent/homepage.dart';
import 'package:pro_talent/login.dart';
import 'package:pro_talent/widget/dropdown_appbar.dart';
import 'package:pro_talent/widget/botton.dart';

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
            padding: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
            child:
                Container(child: Image.asset("assets/logo/logo_protalent.jpg")),
          ),
          const Spacer(
            flex: 1,
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
    toolbarHeight: 70,
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
        Spacer(flex: 4,),
        ButtonAppbar(arah: HomePage(), menu: 'Home'),
        Spacer(flex: 1,),
        ButtonAppbar(arah: HomePage(), menu: 'About Us'),
        Spacer(flex: 1,),
        ButtonAppbar(arah: HomePage(), menu: 'Employee'),
        Spacer(flex: 1,),
        ButtonAppbar(arah: HomePage(), menu: 'Post'),
        Spacer(flex: 1,),
        ButtonAppbar(arah: HomePage(), menu: 'Contact Us'),
        Spacer(flex: 3,),
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
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            width: screenSize.width * 0.006,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Register',
              style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w400),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 18, 108, 178),
            ),
          ),
          Container(
            width: screenSize.width * 0.02,
          )
        ],
      )
    ],
  );
}
