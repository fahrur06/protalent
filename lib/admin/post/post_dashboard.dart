import 'package:flutter/material.dart';
import 'package:pro_talent/const/addnew.dart';
import 'package:pro_talent/const/filter.dart';
import 'package:pro_talent/admin/post/add_post.dart';
import 'package:pro_talent/const/dropdownbuttondates.dart';

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
      height: 2000,
      width: screenSize.width,
      padding: const EdgeInsets.only(left: 100,right: 100),
      color: const Color.fromRGBO(238, 224, 224, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Container(
                  
                  child: const Text("Post     ",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                const AddNewButton(arah: AddPost())
              ],
            ),
          ),
          SizedBox(
              height: 50,
              child: Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      
                      primary: Colors.black,
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {},
                    child: const Text("All (3)"),
                  ),
                  const Spacer(
                    flex: 2,
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
                  
                ],
              )),
          Row(
            children: const [
              DropDownButtonDates(),
              Spacer(
                flex: 1,
              ),
              FilterButton(),
              Spacer(
                flex: 10,
              ),
              Text("3 items"),
              
            ],
          ),
          Container(
            color: Colors.white,
            height: 300,
            width: screenSize.width,
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  child: DataTable(columns: [
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
                    )),
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
                          Container(
                            alignment: Alignment.center,
                            child: const Image(
                              image: AssetImage('assets/icons/home.png'),
                              fit: BoxFit.cover,
                              height: 40,
                              width: 40,
                            ),
                          ),
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
                          Container(
                            alignment: Alignment.center,
                            child: const Image(
                              image: AssetImage('assets/icons/home.png'),
                              fit: BoxFit.cover,
                              height: 40,
                              width: 40,
                            ),
                          ),
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
                          Container(
                            alignment: Alignment.center,
                            child: const Image(
                              image: AssetImage('assets/icons/home.png'),
                              fit: BoxFit.cover,
                              height: 40,
                              width: 40,
                            ),
                          ),
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
                          Container(
                            alignment: Alignment.center,
                            child: const Image(
                              image: AssetImage('assets/icons/home.png'),
                              fit: BoxFit.cover,
                              height: 40,
                              width: 40,
                            ),
                          ),
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
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}