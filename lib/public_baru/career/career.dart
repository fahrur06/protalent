import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_talent/appbar/appbar_home.dart';
import 'package:pro_talent/public/footer.dart';
import 'package:pro_talent/widget/responsive.dart';
import 'package:pro_talent/widget/whatsapp.dart';

class Career extends StatefulWidget {
  const Career({Key? key}) : super(key: key);

  @override
  State<Career> createState() => _CareerState();
}

class _CareerState extends State<Career> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarHomeSmall(screenSize)
          : AppbarHomeLarge(screenSize, context, Colors.blue, Colors.black, Colors.black, Colors.black),
      body: ListView(
        children: [

          Footer(),
        ],
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: WAChat()
    );
  }
}
