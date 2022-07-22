import 'package:flutter/material.dart';
import 'package:pro_talent/conts.dart';
import 'package:easy_table/easy_table.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _location {
  _location(this.no, this.location, this.posting, this.status, this.delete);

  final int no;
  final String location;
  final String posting;
  final String status;
  final Widget delete;

}

class _LocationState extends State<Location> {

  EasyTableModel<_location>? _model;

  @override

  void initState() {
    super.initState();

    List<_location> rows = [
      _location(1, 'West Jakarta', '2022-07-18', 'ACTIVE', TextButton(onPressed: (){}, child: Text('delete'))),
      _location(2, 'Purwakarta', '2022-01-01', 'ACTIVE', TextButton(onPressed: (){}, child: Text('delete'))),
      _location(3, 'Madura', '2022-03-29', 'ACTIVE', TextButton(onPressed: (){}, child: Text('delete'))),
      _location(4, '', '', '', TextButton(onPressed: (){}, child: Text('delete'))),
      _location(5, '', '', '', TextButton(onPressed: (){}, child: Text('delete'))),
      _location(6, '', '', '', TextButton(onPressed: (){}, child: Text('delete'))),

    ];

    _model = EasyTableModel<_location>(rows: rows, columns: [
      EasyTableColumn(name: 'No',headerAlignment: Alignment.center,cellAlignment: Alignment.center, intValue: (row) => row.no),
      EasyTableColumn(name: 'Location',weight: 3, stringValue: (row) => row.location),
      EasyTableColumn(name: 'Posted',headerAlignment: Alignment.center,cellAlignment: Alignment.center,weight: 2, stringValue: (row) => row.posting),
      EasyTableColumn(name: 'Status',headerAlignment: Alignment.center,cellAlignment: Alignment.center,weight: 2, stringValue: (row) => row.status),
      EasyTableColumn(name: '',headerAlignment: Alignment.center,cellAlignment: Alignment.center,weight: 1, objectValue: (row) => row.delete)
    ]
    );
  }

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width*0.64,
        //color: Colors.blue,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenSize.width*0.2,
              //color: Colors.grey,
              child: Text(
                "Talent Locations ",
                style: TextStyle(
                    fontSize: 30,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(flex: 1,),
            Container(
              width: screenSize.width*0.6,
              height: 330,
              color: Colors.white70,
              child: EasyTable<_location>(_model,columnsFit: true,),
            ),
            Spacer(flex: 1,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  width: screenSize.width*0.47,
                  height: 55,
                  //color: Colors.grey,
                  child: TextFormField(textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      labelText: "Isi location talent",
                      hintStyle: TextStyle(),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                  width: screenSize.width*0.1,
                  height: 55,
                  //color: Colors.red,
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    children: [
                      Icon(Icons.save),
                      SizedBox(width: 5,),
                      Text('Save')
                    ],
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
