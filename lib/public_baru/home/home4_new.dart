import 'package:flutter/material.dart';
import 'package:pro_talent/widget/expansion_home4.dart';

class HomeNew4 extends StatefulWidget {
  const HomeNew4({Key? key}) : super(key: key);

  @override
  State<HomeNew4> createState() => _HomeNew4State();
}

class _HomeNew4State extends State<HomeNew4> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 873,
      width: screenSize.width,
      child: Column(
        children: [
          Container(
            height: 130,
            color: Color(0xff1e5ea8),
            width: screenSize.width,
            child: Column(
              children: <Widget>[
                SizedBox(height: 15,),
                Text('VARIOUS INDUSTRY AND SECTORS',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15,),
                Text('Masing-masing Industri mempunyai kebutuhan spesifik nya, kami siap membantu untuk menyediakan layanan sesuai industri nya, dari diskusi awal sampai dengan menyediakan expert consultant.',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: screenSize.width*0.6,
            child: ExpansionHome4(),
          )
        ],
      ),
    );
  }
}
