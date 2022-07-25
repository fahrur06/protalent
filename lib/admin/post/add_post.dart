import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Publish",
        style: TextStyle(
          fontSize: 18,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w600,
        ),
      ),


    );
  }
}
