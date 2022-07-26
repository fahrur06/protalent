import 'package:flutter/material.dart';
import 'package:pro_talent/admin/master_data/industry.dart';
import 'package:pro_talent/admin/master_data/level.dart';
import 'package:pro_talent/admin/master_data/position.dart';
import 'package:pro_talent/admin/master_data/skills.dart';
import 'package:pro_talent/admin/master_data/location.dart';
import 'package:side_navigation/side_navigation.dart';

class MasterData extends StatefulWidget {
  const MasterData({Key? key}) : super(key: key);

  @override
  State<MasterData> createState() => _MasterDataState();
}

Container _container(String judul) {
  return Container(
    child: Text(judul),
  );
}

class _MasterDataState extends State<MasterData> {
  //position , skill , level , industry, location
  List<Widget> views = const [
    Position(),
    Skill(),
    Level(),
    Industry(),
    Location()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 224, 224, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                border: Border.all(color: Colors.black),
              ),
              width: 1200,
              height: 600,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 18, 108, 178),
                      border: Border(
                        bottom: BorderSide(color: Colors.white),
                      ),

                      //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
                    ),
                    padding: const EdgeInsets.only(top: 27, left: 35),
                    height: 95,
                    width: 1200,
                    child: const Text(
                      'Master Data',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ),
                  Container(
                    height: 503,
                    child: Row(
                      children: [
                        SideNavigationBar(
                          expandable: false,
                          //header: SideNavigationBarHeader(image: , title: title, subtitle: subtitle),
                          selectedIndex: selectedIndex,
                          items: const [
                            //position , skill , level , industry, location
                            SideNavigationBarItem(
                              icon: Icons.people_alt,
                              label: 'Position',
                            ),
                            SideNavigationBarItem(
                              icon: Icons.browser_updated,
                              label: 'Skill',
                            ),
                            SideNavigationBarItem(
                              icon: Icons.leaderboard,
                              label: 'Level',
                            ),
                            SideNavigationBarItem(
                              icon: Icons.home_work_outlined,
                              label: 'Industry',
                            ),
                            SideNavigationBarItem(
                              icon: Icons.location_on,
                              label: 'Location',
                            ),
                          ],
                          onTap: (index) {
                            setState(
                              () {
                                selectedIndex = index;
                              },
                            );
                          },
                          theme: SideNavigationBarTheme(
                            // backgroundColor: Color.fromARGB(200, 9, 47, 171),
                            backgroundColor:
                                const Color.fromARGB(255, 18, 108, 178),
                            togglerTheme: const SideNavigationBarTogglerTheme(
                                shrinkIconColor: Colors.white,
                                expandIconColor: Colors.white),
                            itemTheme: const SideNavigationBarItemTheme(
                                selectedItemColor: Colors.white),
                            dividerTheme:
                                SideNavigationBarDividerTheme.standard(),
                          ),
                        ),
                        Expanded(
                          child: views.elementAt(selectedIndex),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
