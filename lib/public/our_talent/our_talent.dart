import 'package:flutter/material.dart';
import 'package:pro_talent/appbar/appbar_home.dart';
import 'package:pro_talent/footer.dart';
import 'package:pro_talent/public/our_talent/talent1.dart';
import 'package:pro_talent/public/our_talent/talent2.dart';
import 'package:pro_talent/public/our_talent/talent3.dart';
import 'package:pro_talent/public/our_talent/talent4.dart';
import 'package:pro_talent/widget/responsive.dart';
import 'package:pro_talent/widget/whatsapp.dart';

class OurTalent extends StatefulWidget {
  const OurTalent({Key? key}) : super(key: key);

  @override
  State<OurTalent> createState() => _OurTalentState();
}

class _OurTalentState extends State<OurTalent> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: WAChat(),
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarHomeSmall(screenSize)
          : AppbarHomeLarge(screenSize, context, Colors.black,Colors.blue,Colors.black,Colors.black),
      body: ListView(
        children: [
          Talent1(),
          Talent2(),
          Talent3(),
          Talent4(),
          Footer(),
        ],
      ),
    );
  }
}
