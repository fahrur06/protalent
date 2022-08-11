import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Animasi_Kanan_Kiri extends StatelessWidget {
  const Animasi_Kanan_Kiri({
    Key? key,
    required this.judul
  }) : super(key: key);
  final String judul;

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      delayStart: Duration(seconds: 3),
      curve: Curves.decelerate,
      direction: Direction.horizontal,
      child: Text(
        judul,
        style: GoogleFonts.robotoCondensed(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          letterSpacing: 1.3,height: 1.4
        ),textAlign: TextAlign.center,
      ),);
  }
}