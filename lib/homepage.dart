import 'package:flutter/material.dart';
import 'package:pro_talent/public/home1.dart';
import 'package:pro_talent/public/home2.dart';
import 'package:pro_talent/public/appbar_home.dart';
import 'package:pro_talent/widget/responsive.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarHomeSmall(screenSize)
          : AppbarHomeLarge(screenSize, context),
      body: ListView(
        children: [
          Home1(),
          Home2(),

        ],
      ),

    );
  }
}
