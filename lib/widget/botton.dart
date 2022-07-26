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
                  decoration: InputDecoration(hintText: 'Full Name'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Gender'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Expected Salary'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Latest Company'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Salary Status'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Latest Work Period'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Work Location'),
                ),
                SizedBox(
                  height: 30,
                ),

                // Container(
                //     child: IconButton(
                //         onPressed: () {},
                //         icon: Icon(
                //           Icons.add_photo_alternate,
                //           size: 35,
                //           color: Colors.grey,
                //         )))
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    publish();
                  },
                  child: Text('SAVE'))
            ],
          ),
        );
    return Row(
      children: [
        Container(
            child: ElevatedButton.icon(
          icon: Icon(
            Icons.person_add,
            size: 20.0,
          ),
          label: Text('Add Talent'),
          onPressed: () async {
            final posisi = await openDialog();
            if (posisi == null || posisi.isEmpty) return;
            setState(() => this.posisi = posisi);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
          ),
        )),
      ],
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
