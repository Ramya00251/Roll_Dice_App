import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  

  String text1;
  StyledText(this.text1);

  @override
  Widget build(BuildContext context) {
    return Text(
          text1,
          style: const TextStyle(fontSize: 20, color: Colors.red),
        );
  }
}