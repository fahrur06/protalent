import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class CardTalent extends StatefulWidget {
  const CardTalent({Key? key}) : super(key: key);

  @override
  State<CardTalent> createState() => _CardTalentState();
}

class _CardTalentState extends State<CardTalent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlipCard(
        fill: Fill
            .fillBack, // Fill the back side of the card to make in the same size as the front.
        direction: FlipDirection.HORIZONTAL, // default
        front: Container(
          child: Image.asset('assets/logo/eksad.jpg'),
        ),
        back: Container(
          child: Image.asset('assets/logo/logo_protalent.png'),
        ),
      ),
    );
  }
}
