import 'package:flutter/material.dart';
import 'package:pro_talent/widget/expansion_home4.dart';

class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> {
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
