import 'package:flutter/material.dart';
import 'package:pro_talent/admin/const/addnew.dart';
import 'package:pro_talent/admin/const/filter.dart';
import 'package:pro_talent/widget/botton.dart';
import 'package:pro_talent/admin/post/add_post.dart';


import 'const/dropdownbuttondates.dart';

class PostDashboard extends StatefulWidget {
  const PostDashboard({Key? key}) : super(key: key);

  @override
  State<PostDashboard> createState() => _PostDashboardState();
}

class _PostDashboardState extends State<PostDashboard> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        height: 1000,
        width: screenSize.width,
        padding: const EdgeInsets.only(left: 100),
        color: const Color.fromRGBO(238, 224, 224, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 50),
                    child: const Text("Post     ",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  AddNewButton(arah: AddPost())
                ],
              ),
            ),
            SizedBox(
                height: 100,
                child: Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(50),
                        primary: Colors.black,
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: () {},
                      child: const Text("All (3)"),
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Search",
                          prefixIcon: const Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 50,
                    ),


                    ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFF42A5F5),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Colors.black,
                              backgroundColor: Colors.blue,
                              textStyle: const TextStyle(fontSize: 15),
                            ),
                            onPressed: () {},
                            child: const Text("Search Post"),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                )),
            Row(
              children: const [
                DropDownButtonDates(),
                FilterButton(),
                Spacer(
                  flex: 5,
                ),
                Text("3 items"),
                Spacer(
                  flex: 1,
                )
              ],
            ),
            Container(
              color: Colors.white,
              height: 500,
              width: 1100,
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  DataTable(columns: [
                    DataColumn(
                        label: Checkbox(
                            value: value,
                            onChanged: (bool? value) {
                              setState(() {
                                this.value = value!;
                              });
                            })),
                    const DataColumn(
                        label: Text(
                      'Title',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    const DataColumn(
                        label: Text(
                      'Author',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    const DataColumn(
                        label: Text(
                      'Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Checkbox(
                          value: value1,
                          onChanged: (bool? value) {
                            setState(() {
                              value1 = value!;
                            });
                          })),
                      DataCell(Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/icons/home.png')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Home',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 139)),
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: const [
                                  Text('Edit'),
                                  SizedBox(width: 20),
                                  Text('Remove'),
                                  SizedBox(width: 20),
                                  Text('View'),
                                  SizedBox(width: 20)
                                ],
                              )
                            ],
                          ),
                        ],
                      )),
                      const DataCell(Text('Admin')),
                      const DataCell(Text('2022-06-18')),
                    ]),
                    DataRow(cells: [
                      DataCell(Checkbox(
                          value: value2,
                          onChanged: (bool? value) {
                            setState(() {
                              value2 = value!;
                            });
                          })),
                      DataCell(Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/icons/home.png')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'About',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 139)),
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: const [
                                  Text('Edit'),
                                  SizedBox(width: 20),
                                  Text('Remove'),
                                  SizedBox(width: 20),
                                  Text('View'),
                                  SizedBox(width: 20)
                                ],
                              )
                            ],
                          ),
                        ],
                      )),
                      const DataCell(Text('Admin')),
                      const DataCell(Text('2022-07-18')),
                    ]),
                    DataRow(cells: [
                      DataCell(Checkbox(
                          value: value3,
                          onChanged: (bool? value) {
                            setState(() {
                              value3 = value!;
                            });
                          })),
                      DataCell(Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/icons/home.png')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'News',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 139)),
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: const [
                                  Text('Edit'),
                                  SizedBox(width: 20),
                                  Text('Remove'),
                                  SizedBox(width: 20),
                                  Text('View'),
                                  SizedBox(width: 20)
                                ],
                              )
                            ],
                          ),
                        ],
                      )),
                      const DataCell(Text('Admin')),
                      const DataCell(Text('2022-07-17')),
                    ]),
                    DataRow(cells: [
                      DataCell(Checkbox(
                          value: value4,
                          onChanged: (bool? value) {
                            setState(() {
                              value4 = value!;
                            });
                          })),
                      DataCell(Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/icons/home.png')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Contact',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 139)),
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: const [
                                  Text('Edit'),
                                  SizedBox(width: 20),
                                  Text('Remove'),
                                  SizedBox(width: 20),
                                  Text('View'),
                                  SizedBox(width: 20)
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                      const DataCell(Text('Admin')),
                      const DataCell(Text('2022-07-18'))
                    ])
                  ])
                ],
              ),
            )
          ],
        ));
  }
}
