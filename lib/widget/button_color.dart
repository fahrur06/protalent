import 'package:flutter/material.dart';


ButtonStyle DefaultColors(){
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {

        return Color(0xff1e5ea8); // Defer to the widget's default.
      },
    ),
    overlayColor:
    MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed))
          return Colors.red; //<-- SEE HERE
        return null; // Defer to the widget's default.
      },
    ),
  );
}