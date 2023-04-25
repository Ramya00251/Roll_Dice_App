import 'dart:math';

import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var current_diceRoll = 2;
  // var activeDiceImage = 'assets/images/dice-1.png';
  // var dice_value = ;
  void rollDice() {
    setState(() {
       current_diceRoll = Random().nextInt(6) + 1;
    });
    print("clicking");
  }
@override
Widget build(context){
  return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-$current_diceRoll.png', width: 200),
            const SizedBox(height: 0,),
            TextButton(onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: EdgeInsets.only(top: 5),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )
            ),
             child: Text('Roll dice'))
          ],
        );
}
}