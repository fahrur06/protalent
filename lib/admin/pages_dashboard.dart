import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_talent/admin/const/addnew.dart';
import 'package:pro_talent/admin/const/apply.dart';
import 'package:pro_talent/admin/const/filter.dart';
import 'package:pro_talent/admin/pages/add_pages.dart';

class PagesDashboard extends StatefulWidget {
  const PagesDashboard({Key? key}) : super(key: key);

  @override
  State<PagesDashboard> createState() => _PagesDashboardState();
}

class _PagesDashboardState extends State<PagesDashboard> {
  String bulkAction = 'Bulk action';
  String allDates = 'All dates';
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
<<<<<<< HEAD
      height: 1000,
      color: Color.fromARGB(255, 248, 195, 255),
      padding: EdgeInsets.all(30),
=======
      height: 2000,
      width: screenSize.width,
      padding: const EdgeInsets.only(left: 100),
      color: const Color.fromRGBO(238, 224, 224, 1),
>>>>>>> 86b216c7fc707df9d26a4c920c3df5d17e32185d
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
<<<<<<< HEAD
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Pages    ',
                style: GoogleFonts.didactGothic(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
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
                              Color(0xFF1976D2),
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
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: () {},
                      child: const Text("Add New"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // TextButton(
              //   child: Text(
              //     'All(4)',
              //     style: TextStyle(color: Color.fromARGB(255, 0, 0, 139)),
              //   ),
              //   onPressed: () {},
              // ),
              

              const Text(
                'All(4)',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 139),
                ),
              ),
              Spacer(flex: 10,),

              SizedBox(
                height: 40,
                width: 200,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
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
=======
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    'Pages    ',
                    style: TextStyle(
                      fontSize: 20,
>>>>>>> 86b216c7fc707df9d26a4c920c3df5d17e32185d
                    ),
                  ),
                ),
                const AddNewButton(arah: AddPages())
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(left: 50),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {},
                  child: const Text("All (4)"),
                ),
                Spacer(
                  flex: 3,
                ),
                // const Text('All(4)',
                //     style: TextStyle(color: Color.fromARGB(255, 0, 0, 139))),

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
                //     Spacer(
                //       flex: 1,
                // ),
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
                        child: const Text("Search Pages"),
                      ),
                    ],
                  ),
                ),
<<<<<<< HEAD
              ),
              Spacer(flex: 1,),
            ],
          ),
          


          const SizedBox(height: 10),

          Row(
            children: [
              // Text('Test'),

              Container(
                height: 30,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 0.80),
                    ),
                child: DropdownButton(
                  underline: Container(),
                  items: <String>['Bulk action', 'Edit', 'Delete']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        child: Text(value), value: value);
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      bulkAction = newValue!;
                    });
                  },
                  value: bulkAction,
                  style: const TextStyle(fontSize: 14),
                ),
=======
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          Row(
            children: [
              // Text('Test'),
              DropdownButton(
                items: <String>['Bulk action', 'Edit', 'Delete']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      child: Text(value), value: value);
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    bulkAction = newValue!;
                  });
                },
                value: bulkAction,
                style: const TextStyle(fontSize: 14),
>>>>>>> 86b216c7fc707df9d26a4c920c3df5d17e32185d
              ),
              const Spacer(
                flex: 1,
              ),

              ApplyButton(),
              const Spacer(
                flex: 1,
              ),

              Container(
                height: 30,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 0.80),
                    ),
                child: DropdownButton(
                  items: <String>['All dates', 'July 2022', 'June 2022']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        child: Text(value), value: value);
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      allDates = newValue!;
                    });
                  },
                  value: allDates,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              const Spacer(
                flex: 1,
              ),

              FilterButton(),
              Spacer(
                flex: 6,
              ),
              Text("4 items"),
              Spacer(
                flex: 2,
              ),
            ],
          ),
<<<<<<< HEAD

          const SizedBox(height: 40),

          Container(
            height: 400,
            width: screenSize.width,
            color: Colors.white,
            child: Row(
              children: [
                // Checkbox(
                //     value: this.value,
                //     onChanged: (bool? value) {
                //       setState(() {
                //         this.value = value!;
                //       });
                //     }),
                // SizedBox(width: 25),
                // Text('Test'),
=======
          Container(
            color: Colors.white,
            height: 300,
            width: 1000,
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
>>>>>>> 86b216c7fc707df9d26a4c920c3df5d17e32185d
                DataTable(columns: [
                  DataColumn(
                      label: Checkbox(
                          value: value,
                          onChanged: (bool? value) {
                            setState(() {
                              value = value!;
                            });
                          })),
                  const DataColumn(
                      label: Text(
                    'Title',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  const DataColumn(
<<<<<<< HEAD
                    label: Text(
                      'Author',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const DataColumn(
                    label: Text(
                      'Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
=======
                      label: Text(
                    'Author',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  const DataColumn(
                      label: Text(
                    'Date',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
>>>>>>> 86b216c7fc707df9d26a4c920c3df5d17e32185d
                ], rows: [
                  DataRow(cells: [
                    DataCell(Checkbox(
                        value: this.value1,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value1 = value!;
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
                        value: this.value2,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value2 = value!;
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
                        value: this.value3,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value3 = value!;
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
                        value: this.value4,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value4 = value!;
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
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
