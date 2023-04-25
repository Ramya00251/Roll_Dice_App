import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

   GradientContainer.purple({super.key})
      : color1 = Colors.black,
        color2 = Colors.black12;

  var startAlignment = Alignment.topLeft;
  var endAlignment = Alignment.bottomRight;

  // final List<Color> colors;
  final Color color1;
  final Color color2;

  

  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
