import 'package:flutter/material.dart';
import 'package:pro_talent/login.dart';
import '../botton.dart';
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
    return Container(
        color: const Color.fromRGBO(238, 224, 224, 1),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                Botton_tombol(
                  title: "Add New Post",
                  arah: const login(),
                ),

                // ClipRRect(
                //   borderRadius: BorderRadius.circular(4),
                //   child: Stack(
                //     children: <Widget>[
                //       Positioned.fill(
                //         child: Container(
                //           decoration: const BoxDecoration(
                //             gradient: LinearGradient(
                //               colors: <Color>[
                //                 Color(0xFF1976D2),
                //                 Color(0xFF42A5F5),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),

                // TextButton(
                //   style: TextButton.styleFrom(
                //     padding: const EdgeInsets.all(16.0),
                //     primary: Colors.black,
                //     textStyle: const TextStyle(fontSize: 15),
                //   ),
                //   onPressed: () {},
                //   child: const Text("Add New Post"),
              ],
            ),
          ),

          Row(
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
                flex: 5,
          ),
              SizedBox(
                height: 50,
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
              const Spacer(
                flex: 1,
          ),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
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
          )
            ],
          ),

          Row(
            children: [
              const DropDownButtonDates(),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
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
                      child: const Text("Filter"),
                    ),
                  ],
                ),
              ),
              const Text("3 items"),
            ],
          ),

          Row(
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
                      const Image(image: AssetImage('assets/icons/home.png')),
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
                      const Image(image: AssetImage('assets/icons/home.png')),
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
                      const Image(image: AssetImage('assets/icons/home.png')),
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
                      const Image(image: AssetImage('assets/icons/home.png')),
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
        ]));
  }
}
