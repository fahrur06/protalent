import 'package:flutter/material.dart';
//
// class Expansionpanel extends StatelessWidget {
//   const Expansionpanel({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

ListTile _posisi (String namaposisi){
  return ListTile(
    leading: Container(
        padding: EdgeInsets.only(top: 7),
        child: Icon(Icons.circle,size: 10,color: Colors.black,)),
    title: Text(namaposisi,
      style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,height: 1.5
      ),),
  );
}


class Expansionpanel extends StatefulWidget {
  Expansionpaneltate createState() => Expansionpaneltate();
}

class Expansionpaneltate extends State<Expansionpanel> {
  List<ExpansionpanelItem> items = <ExpansionpanelItem>[
    ExpansionpanelItem(
        isExpanded: false,
        title: 'Software Engineering',
        content: Padding(
            padding: EdgeInsets.only(bottom: 5,left: 20),
            child: Column(children: <Widget>[
              Container(
                width: 1400,
                child: Text('Position: ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),),
              ),
              _posisi('Backend Engineer'),
              _posisi('Frontend Engineer'),
              _posisi('DevOps Engineer'),
              _posisi('IT Consultant'),
              _posisi('Fullstack Engineer'),
              _posisi('Tester Engineer'),
              _posisi('Mobile Engineer'),
            ])),
        leading: Icon(Icons.computer)),
    ExpansionpanelItem(
        isExpanded: false,
        title: 'Product Management',
        content: Padding(
            padding: EdgeInsets.only(bottom: 5,left: 20),
            child: Column(children: <Widget>[
              Container(
                width: 1400,
                child: Text('Position: ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),),
              ),
              _posisi('Backend Engineer'),
              _posisi('Frontend Engineer'),
              _posisi('DevOps Engineer'),

            ])),
        leading: Icon(Icons.manage_accounts)),

    ExpansionpanelItem(
        isExpanded: false,
        title: 'Marketing & Communications',
        content: Padding(
            padding: EdgeInsets.only(bottom: 5,left: 20),
            child: Column(children: <Widget>[
              Container(
                width: 1400,
                child: Text('Position: ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),),
              ),
              _posisi('Backend Engineer'),
              _posisi('Frontend Engineer'),
              _posisi('DevOps Engineer'),

            ])),
        leading: Icon(Icons.comment_outlined)),

    ExpansionpanelItem(
        isExpanded: false,
        title: 'Data Science',
        content: Padding(
            padding: EdgeInsets.only(bottom: 5,left: 20),
            child: Column(children: <Widget>[
              Container(
                width: 1400,
                child: Text('Position: ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),),
              ),
              _posisi('Backend Engineer'),
              _posisi('Frontend Engineer'),
              _posisi('DevOps Engineer'),

            ])),
        leading: Icon(Icons.table_rows)),

    ExpansionpanelItem(
        isExpanded: false,
        title: 'Sales',
        content: Padding(
            padding: EdgeInsets.only(bottom: 5,left: 20),
            child: Column(children: <Widget>[
              Container(
                width: 1400,
                child: Text('Position: ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),),
              ),
              _posisi('Backend Engineer'),
              _posisi('Frontend Engineer'),
              _posisi('DevOps Engineer'),

            ])),
        leading: Icon(Icons.shopping_cart)),

    ExpansionpanelItem(
        isExpanded: false,
        title: 'Human Resources',
        content: Padding(
            padding: EdgeInsets.only(bottom: 5,left: 20),
            child: Column(children: <Widget>[
              Container(
                width: 1400,
                child: Text('Position: ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),),
              ),
              _posisi('Backend Engineer'),
              _posisi('Frontend Engineer'),

            ])),
        leading: Icon(Icons.people)),


  ];

  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                items[index].isExpanded = !items[index].isExpanded;
              });
            },
            children: items.map((ExpansionpanelItem item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                      leading: item.leading,
                      title: Text(
                        item.title,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ));
                },
                isExpanded: item.isExpanded,
                body: item.content,
              );
            }).toList(),
          ),
        ),
      ],
    );

  }
}


class ExpansionpanelItem {
  ExpansionpanelItem({required this.isExpanded,required this.title,required this.content,required this.leading});
  bool isExpanded;
  final String title;
  final Widget content;
  final Icon leading;

}