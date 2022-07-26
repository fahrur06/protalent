import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:pro_talent/client/talent_descrip.dart';
import 'package:pro_talent/appbar/appbar_dashboard.dart';



class SideMenuTalentClient extends StatefulWidget {
  const SideMenuTalentClient({Key? key}) : super(key: key);

  @override
  State<SideMenuTalentClient> createState() => _SideMenuTalentClientState();
}

class _SideMenuTalentClientState extends State<SideMenuTalentClient> {

  List<Widget> views = [
    SelectTalentClient(),

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
                ),),
              subtitle: Container(),
              // subtitle: Text(
              //   'Admin Eksad',
              //   style: TextStyle(color: Colors.white),
              // ),
            ),
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.person_search,
                label: 'Find Talent',
              ),
              SideNavigationBarItem(
                icon: Icons.note_outlined,
                label: 'Hired Talent',
              ),
              SideNavigationBarItem(
                icon: Icons.settings_applications,
                label: 'My Employee',
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
              Color.fromARGB(255, 18, 108, 178),
              togglerTheme: SideNavigationBarTogglerTheme(
                  shrinkIconColor: Colors.white,
                  expandIconColor: Colors.white),
              itemTheme:
              SideNavigationBarItemTheme(selectedItemColor: Colors.white,unselectedItemColor: Colors.white60),
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