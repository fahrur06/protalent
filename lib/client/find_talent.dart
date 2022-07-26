import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pro_talent/client/sidemenu_talent.dart';
import 'package:dropdown_search/dropdown_search.dart';

class FindTalent extends StatelessWidget {
  FindTalent({Key? key}) : super(key: key);

  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      backgroundColor: Colors.green,
      child: const Icon(Icons.whatsapp),
    ),
      body: Column(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height*0.15,
            color: Colors.grey,
            child: Center(
              child: Container(
                width: screenSize.width*0.83,
                height: screenSize.height*0.11,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
              ),
                child: Column(
                  children: [
                    Container(
                      height: screenSize.height*0.04,
                      child: Row(
                        children: [
                          Spacer(),
                          Text('Position',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                          Spacer(flex: 2,),
                          Text('Skill',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                          Spacer(flex: 2,),
                          Text('Level',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                          Spacer(flex: 2,),
                          Text('Industry',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                          Spacer(flex: 2,),
                          Text('Location',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                          Spacer(flex: 4,),
                        ],
                      ),
                    ),
                    Row(
                      children: [

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30,right: 30,top: 20),
            width: screenSize.width,
            height: screenSize.height*0.75,
            child: GridView.count(
              controller: ScrollController(),
              crossAxisCount: 3,
              mainAxisSpacing: 50,
              crossAxisSpacing: 50,
              children: [
                Profil(
                  name: "Bagas",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Qori",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Faid",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Fahrur",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Budi",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Jay",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Rizki",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Tohap",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Manik",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Arham",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Fikri",
                  gender: "Male",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
                Profil(
                  name: "Maharani",
                  gender: "Female",
                  age: "26",
                  exp: "5",
                  skill1: "Java",
                  skill2: "Flutter",
                  skill3: "Quarkus",
                  numSkill: "7",
                  salary: "10.000.000",
                  lastExp: "Java Developer",
                  lastPosition: "Backend Developer",
                  lastCompany: "EKSAD",
                  berapaLama: "Feb 2020 - Juni 2024",
                ),
              ],
            ),
          ),
        ],
      )
    );

  }
}

class Profil extends StatelessWidget {
  Profil({
    Key? key,
    required this.name,
    required this.gender,
    required this.age,
    required this.exp,
    required this.skill1,
    required this.skill2,
    required this.skill3,
    required this.numSkill,
    required this.salary,
    required this.lastExp,
    required this.lastPosition,
    required this.lastCompany,
    required this.berapaLama,
  }) : super(key: key);

  final String name;
  final String gender;
  final String age;
  final String exp;
  final String skill1;
  final String skill2;
  final String skill3;
  final String numSkill;
  final String salary;
  final String lastExp;
  final String lastPosition;
  final String lastCompany;
  final String berapaLama;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (Context) {
              return SideMenuTalentClient();
            },
          ),
        );
      },
      child: Container(
        height: 340,
        width: 310,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Talent!",
                style: TextStyle(
                  color: Color(0xff01FF1A),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // ListTile(
              //   leading: CircleAvatar(
              //     child: Image.asset(
              //       "assets/images/fotoprofil.png",
              //       fit: BoxFit.fill,
              //     ),
              //     radius: 30,
              //   ),
              //   title: Row(
              //     children: [
              //       Text(
              //         name,
              //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       Image.asset("assets/icons/centangbiru.png")
              //     ],
              //   ),

              //   subtitle: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       SizedBox(height: 10,),
              //       Text("$gender, $age years old"),
              //       SizedBox(height: 5,),
              //       Text("$exp years of experience"),
              //     ],
              //   ),

              //   trailing: Column(crossAxisAlignment: CrossAxisAlignment.end,children: [Icon(Icons.bookmark_border)]),
              // ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage("assets/images/petrik.png"),
                    radius: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset("assets/icons/centangbiru.png")
                          ],
                        ),
                        Text("$gender, $age years old"),
                        Text("$exp years of experience"),
                        Row(
                          children: [
                            Text(
                              "100 % match",
                              style: TextStyle(
                                color: Color(0xff01FF1A),
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              size: 18,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Icon(Icons.bookmark_border)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Skills",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    child: Text(skill1),
                    color: Colors.grey[200],
                    padding: EdgeInsets.all(5),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: Text(skill2),
                    color: Colors.grey[200],
                    padding: EdgeInsets.all(5),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    child: Text(skill3),
                    color: Colors.grey[200],
                    padding: EdgeInsets.all(5),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text("and $numSkill more"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Expected Salary",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "IDR $salary nett",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF214B9A),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Non Negotiable",
                      style: TextStyle(color: Colors.red),
                    ),
                    color: Colors.red[200],
                    padding: EdgeInsets.all(5),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Latest Experience",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "$lastExp | $lastPosition",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),

              Text(lastCompany),

              Text(berapaLama),
            ],
          ),
        ),
      ),
    );
  }
}

class pilihan1 extends StatelessWidget {
  pilihan1({
    Key? key,
    required this.title,
    required this.colorbackground,
    required this.colortitle,
  }) : super(key: key);

  final String title;
  final Color colorbackground;
  final Color colortitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colorbackground,
          ),
          height: 110,
          width: 220,
          child: Padding(
            padding: const EdgeInsets.only(top: 9, bottom: 9),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: colortitle),
                  child: Icon(
                    Icons.person_pin_rounded,
                    size: 50,
                    color: colorbackground,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: colortitle,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );
  }
}
