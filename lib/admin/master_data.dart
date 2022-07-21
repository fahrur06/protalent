import 'package:flutter/material.dart';
import 'package:pro_talent/admin/master_data/position.dart';
import 'package:side_navigation/side_navigation.dart';

class MasterData extends StatefulWidget {
  const MasterData({Key? key}) : super(key: key);

  @override
  State<MasterData> createState() => _MasterDataState();
}

Container _container(String judul){
  return Container(
    child: Text(judul),
  );
}

class _MasterDataState extends State<MasterData> {
  //position , skill , level , industry, location
  List<Widget> views = [
    Position(),
    _container('skill'),
    _container('level'),
    _container('industry'),
    _container('location')
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Container(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              border: Border.all(color: Colors.black)
            ),
            width: 1200,
            height: 592,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, 9, 47, 171),
                    border: Border(bottom: BorderSide(color: Colors.white),),
                    //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
                  ),
                  padding: EdgeInsets.only(top: 27,left: 35),
                  height: 95,
                  width: 1200,
                  child: Text('Master Data',style: TextStyle(
                      fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 495,
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
                          backgroundColor: Color.fromARGB(200, 9, 47, 171),
                          togglerTheme: SideNavigationBarTogglerTheme(
                              shrinkIconColor: Colors.white,
                              expandIconColor: Colors.white),
                          itemTheme: SideNavigationBarItemTheme(
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
    );
  }
}
