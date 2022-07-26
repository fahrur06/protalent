import 'package:flutter/material.dart';
import 'package:easy_table/easy_table.dart';

class AddTalent extends StatefulWidget {
  const AddTalent({Key? key}) : super(key: key);

  @override
  State<AddTalent> createState() => _AddTalentState();
}

class _Talent {
  _Talent(
      this.no, this.nama, this.deskripsi, this.lokasi, this.post, this.delete);

  final int no;
  final String nama;
  final String deskripsi;
  final String lokasi;
  final String post;
  final Widget delete;
}

class _AddTalentState extends State<AddTalent> {
  EasyTableModel<_Talent>? _model;

  @override
  void initState() {
    super.initState();

    List<_Talent> rows = [
      _Talent(1, 'Budi', 'Dibu', 'South Jakarta', '2022-07-18',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _Talent(2, 'Fahrur', 'Dota 2 Champions', 'Madura', '2022-01-01',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _Talent(3, 'Udin', 'Jualan tahu bulat', 'Ciamis', '2022-03-29',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _Talent(4, 'Rizki', 'Pro Player Mobile Legend', 'Bekasi', '2022-04-2',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _Talent(
          5,
          'Faid',
          'Angker, KRL Mania, Pengguna Transportasi Public',
          'Bogor',
          '2022-05-29',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _Talent(6, 'Tohap', 'Member Eksad', 'Jakarta Barat', '2022-03-9',
          TextButton(onPressed: () {}, child: Text('delete'))),
    ];

    _model = EasyTableModel<_Talent>(rows: rows, columns: [
      EasyTableColumn(
          name: 'No',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          intValue: (row) => row.no),
      EasyTableColumn(name: 'Nama', weight: 3, stringValue: (row) => row.nama),
      EasyTableColumn(
          name: 'Description', weight: 3, stringValue: (row) => row.deskripsi),
      EasyTableColumn(
          name: 'Location', weight: 3, stringValue: (row) => row.lokasi),
      EasyTableColumn(
          name: 'Posted',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          weight: 2,
          stringValue: (row) => row.post),
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
                  'Data Client',
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
                    child: EasyTable<_Talent>(
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
