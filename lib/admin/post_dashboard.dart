import 'package:flutter/material.dart';

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
                      child: const Text("Add New Post"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(
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
                Spacer(
                  flex: 4,
            ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                  ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),

              SizedBox(width: 50,

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
                        child: const Text("Search Post"),
                  ),

                ],
              ),
            ),
                Spacer(
                  flex: 1,
                ),
          ],
        )),

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
            Spacer(flex: 5,),
            const Text("3 items"),
            Spacer(flex: 1,)
          ],
        ),

        Row(
          children: [
            DataTable(columns: [
              DataColumn(
                  label: Checkbox(
                      value: this.value,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      })),
              DataColumn(
                  label: Text(
                    'Title',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              DataColumn(
                  label: Text(
                    'Author',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              DataColumn(
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
                    Image(image: AssetImage('assets/icons/home.png')),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Home',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 139)),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
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
                DataCell(Row(
                  children: [
                    Image(image: AssetImage('assets/icons/home.png')),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 139)),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
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
                DataCell(Row(
                  children: [
                    Image(image: AssetImage('assets/icons/home.png')),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'News',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 139)),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
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
                DataCell(Row(
                  children: [
                    Image(image: AssetImage('assets/icons/home.png')),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 139)),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
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
                DataCell(Text('Admin')),
                DataCell(Text('2022-07-18'))
              ])
            ])
          ],
        )
          ],
        )
    );
  }
}
