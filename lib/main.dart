import 'package:flutter/material.dart';
import 'package:pro_talent/admin/dashboard.dart';
import 'package:pro_talent/admin/setting_dashboard.dart';
import 'package:pro_talent/client/dashboard_client.dart';
import 'package:pro_talent/client/hired_talent.dart';
import 'package:pro_talent/homepage.dart';
import 'package:pro_talent/homepage_new.dart';
import 'package:pro_talent/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PROTALENT BY EKSAD",

      home: Scaffold(
        body: HomepageNew(),
      ),
    );
  }
}
