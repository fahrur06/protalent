import 'package:flutter/material.dart';
import 'package:pro_talent/appbar/appbar_dashboard.dart';
import 'package:pro_talent/client/sidemenu_client.dart';
import 'package:flutter/services.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class DashboardClient extends StatelessWidget {
  const DashboardClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setPageTitle('Dashboard Client Protalent', context);
    return Scaffold(
      appBar: BarAtas(context),
      body: const SideClient(),
    );
  }
}
