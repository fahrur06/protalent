import 'package:flutter/material.dart';
import 'package:easy_table/easy_table.dart';
import 'package:pro_talent/admin/talent_manage/add_talent.dart';
import 'package:pro_talent/admin/talent_manage/edit_talent.dart';
import 'package:pro_talent/admin/talent_manage/side_manage_talent.dart';
import 'package:pro_talent/widget/botton.dart';

class TalentManagement extends StatefulWidget {
  const TalentManagement({Key? key}) : super(key: key);

  @override
  State<TalentManagement> createState() => _TalentmanagementState();
}

class _TalentManagementState {
  _TalentManagementState(
      this.no, this.nama, this.posisi, this.status, this.delete);

  final int no;
  final String nama;
  final String posisi;
  final String status;
  final TextButton delete;
}

class _TalentmanagementState extends State<TalentManagement> {
  EasyTableModel<_TalentManagementState>? _model;

  @override
  void initState() {
    super.initState();

    List<_TalentManagementState> rows = [
      _TalentManagementState(
        1,
        'Joko',
        'Software Engineer',
        'Hired',
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.black,
            textStyle: const TextStyle(fontSize: 15),
          ),
          onPressed: () {},
          child: const Text('Edit'),
        ),
      ),
      _TalentManagementState(2, 'Bambang', 'Quality Assuarance', 'Pre Hired',
          TextButton(onPressed: () {}, child: Text('edit'))),
      _TalentManagementState(3, 'Udin', 'Bussiness Analyst', 'Available',
          TextButton(onPressed: () {}, child: Text('edit'))),
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
          name: 'Position', weight: 3, stringValue: (row) => row.posisi),
      EasyTableColumn(
          name: 'Status', weight: 3, stringValue: (row) => row.status),
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
          height: screenSize.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:
                Border.all(color: Color.fromARGB(255, 18, 108, 178), width: 5),
          ),

          child: Container(
            color: Color.fromARGB(255, 18, 108, 178),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30, left: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    color: Color.fromARGB(255, 18, 108, 178),
                  ),
                  width: screenSize.width * 0.7,
                  height: screenSize.height * 0.20,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Talent Management',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          ),
                          Spacer(
                            flex: 15,
                          ),
                          Container(
                            height: 30,
                            width: 180,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: const Icon(Icons.search),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      // ElevatedButton.icon(
                      //   icon: Icon(
                      //     Icons.person_add,
                      //     size: 20.0,
                      //   ),
                      //   label: Text('Add Talent'),
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => AddTalent(),
                      //       ),
                      //     );
                      //   },
                      //   style: ElevatedButton.styleFrom(
                      //     primary: Colors.white,
                      //     onPrimary: Colors.black,
                      //   ),
                      // )
                      AlertForm(),
                    ],
                  ),
                ),
                Container(
                  width: screenSize.width * 0.7,
                  height: screenSize.height * 0.025,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          color: Color.fromARGB(255, 18, 108, 178), width: 5),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  width: screenSize.width * 0.67,
                  height: screenSize.height * 0.6,
                  child: Center(
                    child: Container(
                      width: screenSize.width * 0.63,
                      height: screenSize.height * 0.42,
                      color: Colors.white,
                      child: Container(
                        child: EasyTable<_TalentManagementState>(
                          _model,
                          columnsFit: true,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
