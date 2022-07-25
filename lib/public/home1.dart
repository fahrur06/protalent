import 'package:flutter/material.dart';
import 'package:pro_talent/admin/const/text_homepage.dart';
import 'package:pro_talent/widget/botton.dart';
import 'package:pro_talent/register.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      width: screenSize.width,
      height: screenSize.height * 0.5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF0D5396),
              Color(0xFF2B69A4),
              Color(0xFF42A5F5),
            ])
      ),
      //color: Colors.blue,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 50),
            width: screenSize.width * 0.65,
            //color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenSize.width * 0.4,
                  height: 150,
                  //color: Colors.red,
                  child: Text(
                    home1_head,
                    style: TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 3),
                  ),
                ),
                Container(
                  width: screenSize.width * 0.6,
                  height: 110,
                  //color: Colors.blue,
                  child: Text(
                    home1_body,
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        letterSpacing: 3,
                        height: 1.2),
                  ),
                ),
                Container(
                  width: screenSize.width * 0.13,
                  height: 40,
                  //color: Colors.green,
                  child: Botton_tombol(
                      title: 'Registrasi Sekarang', arah: Register()),
                )
              ],
            ),
          ),
          Container(
            width: screenSize.width * 0.2,
            height: screenSize.height * 0.3,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: NetworkImage('https://cdn.discordapp.com/emojis/883722073845940294.webp?size=128&quality=lossless'),
                    fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }
}
