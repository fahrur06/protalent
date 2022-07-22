import 'package:flutter/material.dart';
import 'package:pro_talent/login.dart';
import 'package:pro_talent/botton.dart';

  AppBar BarAtas(BuildContext context) {
    return AppBar(
      //backgroundColor: Color.fromARGB(200, 9, 47, 171),
      backgroundColor: Colors.white,
      leading: Container(
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
              onPressed: () async {
                await showInformationDialog(context);
              },
              icon: Icon(
                Icons.remove_red_eye,
              ),
              label: Text(
                'Site Online',
              ),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: ((context) => login())),
                );
              },
              icon: Icon(Icons.output,
              ),
              label: Text(
                'Logout',
                style: TextStyle(
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_pin,color: Colors.blue,),
              iconSize: 40,
            )
          ],
        ),
      ],
    );
  }