import 'package:flutter/material.dart';

class AddNewButton extends StatefulWidget {
  const AddNewButton({Key? key}) : super(key: key);

  @override
  State<AddNewButton> createState() => _AddNewButtonState();
}

class _AddNewButtonState extends State<AddNewButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.black,
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: () {},
            child: const Text("Add New"),
          ),
        ],
      ),
    );
  }
}
