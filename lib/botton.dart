import 'package:flutter/material.dart';

import 'conts.dart';

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
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

Future<void> showInformationDialog(BuildContext context) async {
  return await showDialog(context: context,
      builder: (context) {
        final TextEditingController _textEditingController = TextEditingController();


        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            content: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: _textEditingController,
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Nama tidak boleh kosong";
                        }
                        return null;
                      },
                      decoration: InputDecoration(hintText: "Nama Talent"),
                    ),
                    Container(
                      height: 50,
                    ),
                    TextFormField(
                      controller: _textEditingController,
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Deskripsi tidak boleh kosong";
                        }
                        return null;
                      },
                      decoration: InputDecoration(hintText: "Deskripsi Talent"),
                    ),
                  ],
                ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Publish'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Do something like updating SharedPreferences or User Settings etc.
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          );
        });
      });
}