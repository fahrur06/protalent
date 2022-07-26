import 'package:flutter/material.dart';
import 'package:pro_talent/conts_warna.dart';
import 'package:pro_talent/admin/dashboard.dart';
import 'package:easy_table/easy_table.dart';


class Position extends StatefulWidget {
  const Position({Key? key}) : super(key: key);

  @override
  State<Position> createState() => _PositionState();
}

class Posisi {
  Posisi(this.no, this.position, this.posting, this.status, this.delete);

  final int no;
  final String position;
  final String posting;
  final String status;
  final Widget delete;

}

class _PositionState extends State<Position> {
  String posisi='';
  EasyTableModel<Posisi>? _model;

  @override

  void initState() {
    super.initState();

    List<Posisi> rows = [
      Posisi(1, 'Head Product', '2022-07-18', 'ACTIVE', TextButton(onPressed: (){}, child: Text('delete'))),
      Posisi(2, 'Java Developer', '2022-01-01', 'ACTIVE', TextButton(onPressed: (){}, child: Text('delete'))),
      Posisi(3, '', '', '', TextButton(onPressed: (){}, child: Text('delete'))),
      Posisi(4, '', '', '', TextButton(onPressed: (){}, child: Text('delete'))),
      Posisi(5, '', '', '', TextButton(onPressed: (){}, child: Text('delete'))),
      Posisi(6, '', '', '', TextButton(onPressed: (){}, child: Text('delete'))),


    ];

    _model = EasyTableModel<Posisi>(rows: rows, columns: [
      EasyTableColumn(name: 'No',headerAlignment: Alignment.center,cellAlignment: Alignment.center, intValue: (row) => row.no),
      EasyTableColumn(name: 'Position',weight: 3, stringValue: (row) => row.position),
      EasyTableColumn(name: 'Posted',headerAlignment: Alignment.center,cellAlignment: Alignment.center,weight: 2, stringValue: (row) => row.posting),
      EasyTableColumn(name: 'Status',headerAlignment: Alignment.center,cellAlignment: Alignment.center,weight: 2, stringValue: (row) => row.status),
      EasyTableColumn(name: '',headerAlignment: Alignment.center,cellAlignment: Alignment.center,weight: 1, objectValue: (row) => row.delete)
    ]
    );
  }



  Widget build(BuildContext context) {
    Future openDialog() => showDialog(context: context, builder: (context) => EasyTable<Posisi>(_model,columnsFit: true,),
    //     TextFormField(
    //   textAlign: TextAlign.start,
    //   decoration: InputDecoration(
    //     labelText: "Isi position talent",
    //     hintStyle: TextStyle(),
    //     border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(5.0)),
    //   ),
    // ),
    );

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
                "Talent Positions",
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
              child: EasyTable<Posisi>(_model,columnsFit: true,),
            ),
            Spacer(flex: 1,),
            Container(
              width: screenSize.width*0.6,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    width: screenSize.width*0.47,
                    height: 55,
                    //color: Colors.grey,
                    child:
                    TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        labelText: "Isi position talent",
                        hintStyle: TextStyle(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                   ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                    width: screenSize.width*0.1,
                    height: 55,
                    //color: Colors.red,
                    child: ElevatedButton(onPressed: ()async {
                      final posisi = await openDialog();
                      if (posisi == null || posisi.isEmpty)
                        return;
                      setState(()=>this._model = posisi);
                    },
                        child: Container(
                          width: screenSize.width*0.08,
                      child: Row(
                        children: [
                          Container(
                            width: screenSize.width*0.017,
                              child: Icon(Icons.save)),
                          Spacer(flex: 1,),
                          Container(
                            width: screenSize.width*0.028,
                              child: Text('Save'))
                        ],
                      ),
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
