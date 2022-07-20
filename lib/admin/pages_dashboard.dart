import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PagesDashboard extends StatefulWidget {
  const PagesDashboard({Key? key}) : super(key: key);

  State<PagesDashboard> createState() => _PagesDashboardState();
}

class _PagesDashboardState extends State<PagesDashboard>{
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
              Container(
                child: Text(
                  'Pages    ',
                  style: GoogleFonts.didactGothic(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),

              // TextButton(
              //   style: ButtonStyle(
              //       foregroundColor: MaterialStateProperty.all(Colors.blue),
              //       backgroundColor: MaterialStateProperty.resolveWith(
              //           (Set<MaterialState> states) {
              //         return states.contains(MaterialState.disabled)
              //             ? null
              //             : Colors.grey;
              //       })),
              //   onPressed: null,
              //   child: Text(
              //     'Add new',
              //     style: TextStyle(color: Colors.black),
              //   ),
              // ),

              Container(
                child: FlatButton(
                  child: Text(
                    'Add new',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  color: Color.fromARGB(255, 204, 204, 255),
                  textColor: Color.fromARGB(255, 0, 0, 139),
                  onPressed: () {},
                ),
              )
            ],
          ),

          SizedBox(height: 15),

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

              Text('All(4)',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 139)))
            ],
          ),

          SizedBox(height: 20),

          Row(
            children: [
              // Text('Test'),

              Container(
                child: DropdownButton(
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
                  style: TextStyle(fontSize: 14),
                ),
              ),

              SizedBox(width: 30),

              Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Apply',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    color: Color.fromARGB(255, 204, 204, 255),
                    textColor: Color.fromARGB(255, 0, 0, 139),
                  )),

              SizedBox(width: 70),

              Container(
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
                  style: TextStyle(fontSize: 14),
                ),
              ),

              SizedBox(width: 30),

              Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Filter',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    color: Color.fromARGB(255, 204, 204, 255),
                    textColor: Color.fromARGB(255, 0, 0, 139),
                  ))
            ],
          ),

          SizedBox(height: 40),

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
                        value: this.value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                          });
                        })),
                DataColumn(label: Text('Title')),
                DataColumn(label: Text('Author')),
                DataColumn(label: Text('Date'))
              ], rows: [
                DataRow(cells: [
                  DataCell(Checkbox(
                      value: this.value1,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value1 = value!;
                        });
                      })),
                  DataCell(Text('Title1')),
                  DataCell(Text('Admin')),
                  DataCell(Text('2022-06-18')),
                ]),
                DataRow(cells: [
                  DataCell(Checkbox(
                      value: this.value2,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value2 = value!;
                        });
                      })),
                  DataCell(Text('Title2')),
                  DataCell(Text('Admin')),
                  DataCell(Text('2022-07-18')),
                ]),
                DataRow(cells: [
                  DataCell(Checkbox(
                      value: this.value3,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value3 = value!;
                        });
                      })),
                  DataCell(Text('Title3')),
                  DataCell(Text('Admin')),
                  DataCell(Text('2022-07-17')),
                ]),
                DataRow(cells: [
                  DataCell(Checkbox(
                      value: this.value4,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value4 = value!;
                        });
                      })),
                  DataCell(Text('Title4')),
                  DataCell(Text('Admin')),
                  DataCell(Text('2022-07-18'))
                ])
              ])
            ],
          )
        ],
      ),
    );
  }
}
