// import 'package:easy_table/easy_table.dart';
// import 'package:flutter/material.dart';
// import 'package:pro_talent/conts.dart';

// class TalentManagement extends StatefulWidget {
//   const TalentManagement({super.key});

//   @override
//   State<TalentManagement> createState() => _TalentManagementState();
// }

// class Talent {
//   Talent(this.no, this.talentName, this.position, this.status, this.delete);

//   final int no;
//   final String talentName;
//   final String position;
//   final String status;
//   final Widget delete;
// }

// class _TalentManagementState extends State<TalentManagement> {
//   EasyTableModel<Talent>? _model;

//   @override
//   void initState() {
//     super.initState();

//     List<Talent> rows = [
//       Talent(1, 'Joko', '2022-07-18', 'Hired',
//           TextButton(onPressed: () {}, child: Text('delete'))),
//       Talent(2, 'Bambang', '2022-01-01', 'Pre Hired',
//           TextButton(onPressed: () {}, child: Text('delete'))),
//       Talent(
//           3, '', '', '', TextButton(onPressed: () {}, child: Text('delete'))),
//       Talent(
//           4, '', '', '', TextButton(onPressed: () {}, child: Text('delete'))),
//       Talent(
//           5, '', '', '', TextButton(onPressed: () {}, child: Text('delete'))),
//       Talent(
//           6, '', '', '', TextButton(onPressed: () {}, child: Text('delete'))),
//     ];

//     _model = EasyTableModel<Talent>(rows: rows, columns: [
//       EasyTableColumn(
//           name: 'No',
//           headerAlignment: Alignment.center,
//           cellAlignment: Alignment.center,
//           intValue: (row) => row.no),
//       EasyTableColumn(
//           name: 'Talent Name', weight: 3, stringValue: (row) => row.talentName),
//       EasyTableColumn(
//           name: 'Position',
//           headerAlignment: Alignment.center,
//           cellAlignment: Alignment.center,
//           weight: 2,
//           stringValue: (row) => row.position),
//       EasyTableColumn(
//           name: 'Status',
//           headerAlignment: Alignment.center,
//           cellAlignment: Alignment.center,
//           weight: 2,
//           stringValue: (row) => row.status),
//       EasyTableColumn(
//           name: '',
//           headerAlignment: Alignment.center,
//           cellAlignment: Alignment.center,
//           weight: 1,
//           objectValue: (row) => row.delete)
//     ]);
//   }

//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         width: screenSize.width * 0.64,
//         //color: Colors.blue,
//         padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: screenSize.width * 0.2,
//               //color: Colors.grey,
//               child: Text(
//                 "Talent Management",
//                 style: TextStyle(
//                     fontSize: 30,
//                     color: kPrimaryColor,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             Spacer(
//               flex: 1,
//             ),
//             Container(
//               width: screenSize.width * 0.6,
//               height: 330,
//               color: Colors.white70,
//               child: EasyTable<Talent>(
//                 _model,
//                 columnsFit: true,
//               ),
//             ),
//             Spacer(
//               flex: 1,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:easy_table/easy_table.dart';

class TalentManagement extends StatefulWidget {
  const TalentManagement({Key? key}) : super(key: key);

  @override
  State<TalentManagement> createState() => _TalentmanagementState();
}

class _TalentManagementState {
  _TalentManagementState(
      this.no, this.nama, this.deskripsi, this.lokasi, this.post, this.delete);

  final int no;
  final String nama;
  final String deskripsi;
  final String lokasi;
  final String post;
  final Widget delete;
}

class _TalentmanagementState extends State<TalentManagement> {
  EasyTableModel<_TalentManagementState>? _model;

  @override
  void initState() {
    super.initState();

    List<_TalentManagementState> rows = [
      _TalentManagementState(1, 'Joko', 'Software Engineer', 'Hired',
          '2022-07-18', TextButton(onPressed: () {}, child: Text('delete'))),
      _TalentManagementState(2, 'Bambang', 'QA', 'Pre Hired', '2022-01-01',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _TalentManagementState(3, 'Udin', 'BA', 'Hired', '2022-03-29',
          TextButton(onPressed: () {}, child: Text('delete'))),
    ];

    _model = EasyTableModel<_TalentManagementState>(rows: rows, columns: [
      EasyTableColumn(
          name: 'No',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          intValue: (row) => row.no),
      EasyTableColumn(
          name: 'Talent Name', weight: 3, stringValue: (row) => row.nama),
      EasyTableColumn(
          name: 'Position', weight: 3, stringValue: (row) => row.deskripsi),
      EasyTableColumn(
          name: 'Status', weight: 3, stringValue: (row) => row.lokasi),
      EasyTableColumn(
          name: '',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          weight: 1,
          objectValue: (row) => row.delete)
    ]);
  }

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          //padding: EdgeInsets.symmetric(vertical: screenSize.height*0.1,horizontal: screenSize.width*0.2),
          width: screenSize.width * 0.7,
          height: screenSize.height * 0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue, width: 5),
          ),

          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30, left: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  color: Colors.blue,
                ),
                width: screenSize.width * 0.7,
                height: screenSize.height * 0.15,
                child: Text(
                  'Talent Management',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
              Container(
                width: screenSize.width * 0.7,
                height: screenSize.height * 0.025,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.blue, width: 5),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                width: screenSize.width * 0.67,
                height: screenSize.height * 0.5,
                child: Center(
                  child: Container(
                    width: screenSize.width * 0.63,
                    height: screenSize.height * 0.42,
                    color: Colors.white,
                    child: EasyTable<_TalentManagementState>(
                      _model,
                      columnsFit: true,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
