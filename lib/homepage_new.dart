import 'package:flutter/material.dart';
import 'package:pro_talent/public/footer.dart';
import 'package:pro_talent/public/home/home4.dart';
import 'package:pro_talent/public_baru/home/home1_new.dart';
import 'package:pro_talent/public_baru/home/home2_new.dart';
import 'package:pro_talent/public_baru/home/home3_new.dart';
import 'package:pro_talent/public_baru/home/home4_new.dart';
import '../appbar/appbar_baru.dart';

import '../widget/responsive.dart';


class HomepageNew extends StatefulWidget {
  const HomepageNew({Key? key}) : super(key: key);

  @override
  State<HomepageNew> createState() => _HomepageNewState();
}

class _HomepageNewState extends State<HomepageNew> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarHomeSmall(screenSize)
          : AppbarHomeLarge(screenSize, context, Colors.blue, Colors.black,
          Colors.black, Colors.black, Colors.black),
      body: ListView(
        children: [
          HomeNew1(),
          HomeNew2(),
          HomeNew3(),
          HomeNew4(),
          Footer(),

        ],
      ),

    );
  }
}
