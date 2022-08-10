import 'package:flutter/material.dart';
import 'package:pro_talent/public/footer.dart';
import 'package:pro_talent/public/home/home1.dart';
import 'package:pro_talent/public/home/home2.dart';
import 'package:pro_talent/public/home/home3.dart';
import 'package:pro_talent/public/home/home4.dart';
import 'package:pro_talent/appbar/appbar_baru.dart';
import 'package:pro_talent/widget/responsive.dart';
import 'package:pro_talent/widget/whatsapp.dart';
import 'package:pro_talent/public_baru/home2.dart';

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
            : AppbarHomeLarge(screenSize, context, Colors.blue, Colors.black,
                Colors.black, Colors.black, Colors.black),
        body: ListView(
          children: [
            Home1(),
            HomeBaru2(),
            Home3(),
            Home4(),
            Footer(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: WAChat());
  }
}
