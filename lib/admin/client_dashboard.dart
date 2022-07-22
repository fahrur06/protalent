import 'package:flutter/material.dart';
import 'package:easy_table/easy_table.dart';




class ClientDashboard extends StatefulWidget {
  const ClientDashboard({Key? key}) : super(key: key);

  @override
  State<ClientDashboard> createState() => _ClientDashboardState();

}

class  _client {
  _client(this.no, this.nama, this.deskripsi, this.lokasi,this.post, this.delete);

  final int no;
  final String nama;
  final String deskripsi;
  final String lokasi;
  final String post;
  final Widget delete;

}

class _ClientDashboardState extends State<ClientDashboard> {

  EasyTableModel<_client>? _model;

  @override

  void initState() {
    super.initState();

    List<_client> rows = [
      _client(1, 'Bambang','','South Jakarta', '2022-07-18', TextButton(onPressed: (){}, child: Text('delete'))),
      _client(2, 'Fahrur','','Madura', '2022-01-01', TextButton(onPressed: (){}, child: Text('delete'))),
      _client(3, 'Udin','','Ciamis','2022-03-29', TextButton(onPressed: (){}, child: Text('delete'))),
      _client(4, '', '', '','', TextButton(onPressed: (){}, child: Text('delete'))),
      _client(5, '', '', '','', TextButton(onPressed: (){}, child: Text('delete'))),
      _client(6, '', '', '','', TextButton(onPressed: (){}, child: Text('delete'))),

    ];

    _model = EasyTableModel<_client>(rows: rows, columns: [
      EasyTableColumn(name: 'No',headerAlignment: Alignment.center,cellAlignment: Alignment.center, intValue: (row) => row.no),
      EasyTableColumn(name: 'Nama',weight: 3, stringValue: (row) => row.nama),
      EasyTableColumn(name: 'Description',weight: 3, stringValue: (row) => row.deskripsi),
      EasyTableColumn(name: 'Location',weight: 3, stringValue: (row) => row.lokasi),
      EasyTableColumn(name: 'Posted',headerAlignment: Alignment.center,cellAlignment: Alignment.center,weight: 2, stringValue: (row) => row.post),
      EasyTableColumn(name: '',headerAlignment: Alignment.center,cellAlignment: Alignment.center,weight: 1, objectValue: (row) => row.delete)
    ]
    );
  }
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          //padding: EdgeInsets.symmetric(vertical: screenSize.height*0.1,horizontal: screenSize.width*0.2),
          width: screenSize.width*0.7,
          height: screenSize.height*0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.blue,width: 5),
            

          ),
          

          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30,left: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)
                  ),
                  color: Colors.blue,
                ),
                width: screenSize.width*0.7,
                height: screenSize.height*0.15,
                child:  Text('Data Client',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,letterSpacing: 2),),

              ),
              Container(width: screenSize.width*0.7,
                height: screenSize.height*0.025,
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.blue,width: 5),),
                ),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                width: screenSize.width*0.67,
                height: screenSize.height*0.5,
                child: Center(
                  child: Container(
                    width: screenSize.width*0.63,
                    height: screenSize.height*0.42,
                    color: Colors.white,
                    child: EasyTable<_client>(_model,columnsFit: true,),
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
