import 'package:flutter/material.dart';
import 'package:pro_talent/admin/dashboard.dart';
import 'package:pro_talent/admin/setting_dashboard.dart';
import 'package:pro_talent/client/dashboard_client.dart';
import 'package:pro_talent/client/hired_talent.dart';
import 'package:pro_talent/homepage.dart';
import 'package:pro_talent/homepage_new.dart';
import 'package:pro_talent/login.dart';
import 'package:pro_talent/public_baru/career/career.dart';
import 'package:pro_talent/public_baru/our_services/our_services.dart';
import 'package:pro_talent/register.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureApp();
  runApp(const MyApp());
}

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PROTALENT BY EKSAD",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePageNew(),
        '/aboutus': (context) => const HomePageNew(),
        '/login': (context) => const login(),
        '/register': (context) => const Register(),
        '/dashboard': (context) => const Dashboard(),
        '/career': (context) => const Career(),
        '/service': (context) => const OurServices(),

      },

      //home: Scaffold(
       // body: HomePageNew(),
      //),
    );
  }
}
