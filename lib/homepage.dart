import 'package:flutter/material.dart';
import 'package:pro_talent/public/footer.dart';
import'package:pro_talent/public/home/home1.dart';
import 'package:pro_talent/public/home/home2.dart';
import 'package:pro_talent/public/home/home3.dart';
import 'package:pro_talent/public/home/home4.dart';
import 'package:pro_talent/appbar/appbar_home.dart';
import 'package:pro_talent/widget/responsive.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void>? _launched;

  void launchWhatsApp(
      {required int phone,
        required String message,
      }) async {
    String url() {
      return "https://web.whatsapp.com/send?phone=$phone&text=${Uri.parse(message)}";
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarHomeSmall(screenSize)
          : AppbarHomeLarge(screenSize, context, Colors.blue,Colors.black,Colors.black,Colors.black),
      body: ListView(
        children: [
          Home1(),
          Home2(),
          Home3(),
          Home4(),
          Footer(),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            launchWhatsApp(phone: 6282125034380, message: 'Permisi bang saya mau pesan nasi uduk 1');
          });
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.whatsapp,size: 40,),
      ),

    );
  }
}
