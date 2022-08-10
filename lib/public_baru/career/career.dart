import 'package:flutter/material.dart';
import 'package:pro_talent/public_baru/career/career3.dart';

import '../../appbar/appbar_baru.dart';
import '../../public/footer.dart';
import '../../widget/responsive.dart';
import '../../widget/whatsapp.dart';
import 'career1.dart';
import 'career3.dart';

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
            : AppbarHomeLarge(screenSize, context, Colors.blue, Colors.black,
                Colors.black, Colors.black, Colors.black),
        body: ListView(
          children: [
            Career1(),
            Career3(),
            Footer(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: WAChat());
  }
}
