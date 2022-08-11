import 'package:flutter/material.dart';
import 'package:pro_talent/admin/dashboard.dart';
import 'package:pro_talent/conts_warna.dart';
import 'package:pro_talent/homepage.dart';
import 'package:pro_talent/public/contact_us/ContactUs.dart';
import 'package:pro_talent/public/our_talent/our_talent.dart';
import 'package:pro_talent/public_baru/contact_us_baru/contact_us_baru.dart';
import 'package:pro_talent/register.dart';
import 'package:pro_talent/login.dart';
import 'package:pro_talent/widget/dropdown_appbar.dart';
import 'package:pro_talent/widget/botton.dart';
import 'package:pro_talent/public/post/post.dart';

import '../public_baru/career/career.dart';
import '../public_baru/our_services/our_services.dart';

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
            child: Container(
              child: Image.asset("assets/logo/logo_protalent.png"),
              height: 50,
              width: 150,
            ),
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

AppBar AppbarHomeLarge(Size screenSize, BuildContext context, Color home,
    Color aboutUs, Color ourServices, Color career, Color contactUs) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 100,
    leadingWidth: screenSize.width * 0.3,
    leading: Row(
      children: [
        Container(
          width: screenSize.width * 0.1,
        ),
        IconButton(
          onPressed: () {},
          icon: Image(
            image: AssetImage('assets/logo/protalent.png'),
            width: 500,
            height: 200,
          ),
          iconSize: 190,
        ),
      ],
    ),
    title: Row(
      children: [
        ButtonAppbar(arah: HomePage(), menu: 'Home', warna: home),
        Spacer(
          flex: 1,
        ),
        ButtonAppbar(arah: HomePage(), menu: 'About Us', warna: aboutUs),
        Spacer(
          flex: 1,
        ),
        ButtonAppbar(
            arah: OurServices(), menu: 'Our Services', warna: ourServices),
        Spacer(
          flex: 1,
        ),
        ButtonAppbar(arah: Career(), menu: 'Career', warna: career),
        Spacer(
          flex: 1,
        ),
        ButtonAppbar(
            arah: ContactUs_baru(), menu: 'Contact Us', warna: contactUs),
        Spacer(
          flex: 2,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Dashboard(),
              ),
            );
          },
          child: Text(
            'Login',
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.w500, color: Colors.black),
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
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),
          ),
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 60, 74, 243),
              fixedSize: Size(130, 45),
              onPrimary: Colors.red,


          ),
        ),
        Spacer(
          flex: 5,
        ),
      ],
    ),
  );
}
