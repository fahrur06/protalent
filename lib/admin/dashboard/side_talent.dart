import 'package:flutter/material.dart';
import 'package:pro_talent/appbar/appbar_dashboard.dart';
//import 'package:pro_talent/admin/dashboard/main_dashboard.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:pro_talent/admin/dashboard/desc_talent.dart';
import 'package:pro_talent/admin/client/client_dashboard.dart';
import 'package:pro_talent/admin/pages/pages_dashboard.dart';
import 'package:pro_talent/admin/post/post_dashboard.dart';
import 'package:pro_talent/admin/master_data/master_data.dart';
import 'package:pro_talent/admin/setting_dashboard.dart';
import 'package:pro_talent/admin/talent_manage/talent_manage.dart';

//import '../../login.dart';

class SideMenuTalent extends StatefulWidget {
  const SideMenuTalent({Key? key}) : super(key: key);

  @override
  _SideMenuTalentState createState() => _SideMenuTalentState();
}

class _SideMenuTalentState extends State<SideMenuTalent> {
  List<Widget> views = [
    SelectTalent(),
    SettingDashboard(),
    PagesDashboard(),
    PostDashboard(),
    MasterData(),
    ClientDashboard(),
    TalentManagement(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarAtas(context),
      body: Row(
        children: [
          SideNavigationBar(
            header: SideNavigationBarHeader(
              image: const CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person_pin,
                  size: 20,
                ),
              ),
              title: Container(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                  'Fahrur Huzain',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Container(),
            ),
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.home,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
              SideNavigationBarItem(
                icon: Icons.insert_page_break,
                label: 'Pages',
              ),
              SideNavigationBarItem(
                icon: Icons.post_add,
                label: 'Post',
              ),
              SideNavigationBarItem(
                icon: Icons.table_rows,
                label: 'Master Data',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Client',
              ),
              SideNavigationBarItem(
                icon: Icons.people_alt,
                label: 'Talent Management',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            // Change the background color and disabled header/footer dividers
            // Make use of standard() constructor for other themes
            theme: SideNavigationBarTheme(
              backgroundColor:
                  //Color.fromARGB(200, 9, 47, 171),
                  const Color.fromARGB(255, 18, 108, 178),
              togglerTheme: const SideNavigationBarTogglerTheme(
                  shrinkIconColor: Colors.white, expandIconColor: Colors.white),
              itemTheme: const SideNavigationBarItemTheme(
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white60),
              dividerTheme: SideNavigationBarDividerTheme.standard(),
            ),
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
