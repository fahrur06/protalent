import 'package:flutter/material.dart';
import 'package:pro_talent/public/contact_us/ContactUs.dart';
import 'package:pro_talent/public_baru/career/career3.dart';
import 'package:pro_talent/public_baru/contact_us_baru/contact_us1.dart';
import 'package:pro_talent/public_baru/contact_us_baru/contact_us2.dart';

import '../../appbar/appbar_baru.dart';
import '../../footer.dart';
import '../../widget/responsive.dart';
import '../../widget/whatsapp.dart';

class ContactUs_baru extends StatefulWidget {
  const ContactUs_baru({Key? key}) : super(key: key);

  @override
  State<ContactUs_baru> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs_baru> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppbarHomeSmall(screenSize)
            : AppbarHomeLarge(screenSize, context, Colors.black, Colors.black,
                Colors.black, Colors.black, Colors.blue),
        body: ListView(
          children: [
            ContactUs1(),
            ContactUs2(),
            Footer(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: WAChat());
  }
}
