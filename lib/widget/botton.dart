import 'package:flutter/material.dart';

import '../conts.dart';

class botton_tombol2 extends StatelessWidget {
  const botton_tombol2({
    Key? key,
    required this.title,
    required this.arah,
  }) : super(key: key);
  final String title;
  final Widget arah;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            side: BorderSide(width: 1, color: kPrimaryColor),
            primary: Colors.white),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => arah));
        },
        child: Text(
          title,
          style: TextStyle(
              fontSize: 17, color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Botton_tombol extends StatelessWidget {
  Botton_tombol({
    Key? key,
    required this.title,
    required this.arah,
  }) : super(key: key);

  final String title;
  final Widget arah;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          primary: Color.fromARGB(255, 0, 36, 192),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => arah));
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class AlertForm extends StatefulWidget {
  const AlertForm({Key? key}) : super(key: key);

  @override
  State<AlertForm> createState() => _AlertFormState();
}

class _AlertFormState extends State<AlertForm> {
  late TextEditingController controller;
  String posisi = '';

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    void publish() {
      Navigator.of(context).pop(controller.text);
    }

    Future openDialog() => showDialog<String>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Add Talent'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Nama Talent'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Deskripsi Talent'),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(child: IconButton(onPressed: (){}, icon: Icon(Icons.add_photo_alternate,size: 35,color: Colors.grey,)))
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    publish();
                  },
                  child: Text('PUBLISH'))
            ],
          ),
        );
    return Container(
      child: ElevatedButton(
          onPressed: () async {
            final posisi = await openDialog();
            if (posisi == null || posisi.isEmpty) return;
            setState(() => this.posisi = posisi);
          },
          child: Text('Add New')),
    );
  }
}

class ButtonAppbar extends StatelessWidget {
  const ButtonAppbar({Key? key, required this.arah, required this.menu})
      : super(key: key);
  final String menu;
  final Widget arah;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => arah,
            ),
          );
        },
        child: Text(
          menu,
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered))
              // ignore: curly_braces_in_flow_control_structures
              return Colors.blue;
            return Colors.black; // null throus error in flutter 2.2+.
          }),
        ),
      ),
    );
  }
}
