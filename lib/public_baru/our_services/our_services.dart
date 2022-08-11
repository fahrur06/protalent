import 'package:flutter/material.dart';
import 'package:pro_talent/public_baru/our_services/our_services1.dart';
import 'package:pro_talent/public_baru/our_services/our_services2.dart';
import 'package:pro_talent/public_baru/our_services/our_services4.dart';

import '../../appbar/appbar_baru.dart';
import '../../footer.dart';
import '../../widget/responsive.dart';
import '../../widget/whatsapp.dart';

class OurServices extends StatefulWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppbarHomeSmall(screenSize)
            : AppbarHomeLarge(screenSize, context, Colors.black, Colors.black,
                Colors.blue, Colors.black, Colors.black),
        body: ListView(
          children: [
            OurServices1(),
            OurServices2(),
            // OurServices3(),
            OurServices4(),
            Footer(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: WAChat());
  }
}
