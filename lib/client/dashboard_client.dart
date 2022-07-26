import 'package:flutter/material.dart';
import 'package:pro_talent/appbar/appbar_dashboard.dart';
import 'package:pro_talent/client/sidemenu_client.dart';



class DashboardClient extends StatelessWidget {
  const DashboardClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarAtas(context),
      body: SideClient(),
    );
  }
}
