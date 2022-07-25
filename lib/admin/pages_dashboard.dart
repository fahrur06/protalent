import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_talent/admin/const/apply.dart';
import 'package:pro_talent/admin/const/filter.dart';

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
    return Container(
      height: 1000,
      color: Colors.white,
      child: Column(
        children: [
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

          const SizedBox(height: 15),

          // Text('All'),

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

              const Text('All(4)',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 139))),

              SizedBox(
                height: 50,
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
            ],
          ),

          const SizedBox(height: 80),

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
              ),

              const SizedBox(width: 30),

              ApplyButton(),

              const SizedBox(width: 70),

              DropdownButton(
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

              const SizedBox(width: 30),

              FilterButton(),
            ],
          ),

          const SizedBox(height: 40),

          Row(
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
                      value: this.value1,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value1 = value!;
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
                      value: this.value2,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value2 = value!;
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
                      value: this.value3,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value3 = value!;
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
                      value: this.value4,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value4 = value!;
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
          )
        ],
      ),
    );
  }
}
