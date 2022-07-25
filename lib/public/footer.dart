import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.3,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color(0xFF0D5396),
            Color(0xFF2B69A4),
            Color(0xFF42A5F5),
      ])),
      child: Column(
        children: [
          const Spacer(flex: 1),
          const Text("PT Tiga Daya Digital Indonesia",
              style: TextStyle(
                color: Colors.white,
              )),
          const Spacer(flex: 1),
          const Text("Powered by EKSAD Technology ",
              style: TextStyle(
                color: Colors.white,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.copyright, color: Colors.white, size: 18),
              Text("2022. All Rights Reserved.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ],
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
