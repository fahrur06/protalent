import 'package:flutter/material.dart';
import 'package:pro_talent/admin/main_dashboard.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:pro_talent/admin/desc_talent.dart';
import 'package:pro_talent/admin/client_dashboard.dart';
import 'package:pro_talent/admin/pages_dashboard.dart';
import 'package:pro_talent/admin/post_dashboard.dart';
import 'package:pro_talent/admin/master_data.dart';
import 'package:pro_talent/admin/setting_dashboard.dart';
import 'package:pro_talent/admin/talent_manage.dart';

import '../login.dart';

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
      appBar: AppBar(
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
                  Navigator.push(
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
      ),
      body: Row(
        children: [
          SideNavigationBar(
            header: SideNavigationBarHeader(
              image: CircleAvatar(
                child: Icon(
                  Icons.person_pin,
                  size: 20,
                ),
                radius: 20,
              ),
              title: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Fahrur Huzain',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Container(),
              // subtitle: Text(
              //   'Admin Eksad',
              //   style: TextStyle(color: Colors.white),
              // ),
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
              backgroundColor: Color.fromARGB(200, 9, 47, 171),
              togglerTheme: SideNavigationBarTogglerTheme(
                  shrinkIconColor: Colors.white, expandIconColor: Colors.white),
              itemTheme:
                  SideNavigationBarItemTheme(selectedItemColor: Colors.white),
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
