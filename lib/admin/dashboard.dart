import 'package:flutter/material.dart';
import 'package:pro_talent/admin/side_menu.dart';
import 'package:pro_talent/login.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(context),
      body: SideMenu(),
    );
  }

  AppBar Appbar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(200, 9, 47, 171),
      //backgroundColor: Colors.white70,
      leading: Container(
        // width: 440,height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/logo/logo_protalent.png'),
              fit: BoxFit.fill),
        ),
      ),
      leadingWidth: 230,
      actions: [
        Row(
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.white70,
              ),
              label: Text(
                'Site Online',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: ((context) => login())),
                );
              },
              icon: Icon(Icons.output, color: Colors.white70),
              label: Text(
                'Logout',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_pin),
              iconSize: 40,
            )
          ],
        ),
      ],
    );
  }
}
