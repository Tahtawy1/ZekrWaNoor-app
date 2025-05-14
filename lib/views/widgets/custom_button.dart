import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text1,
    required this.text2,
    required this.onPressed,
  });
  final String text1;
  final String text2;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 150,
      minWidth: 150,
      color: thingColors,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Text(
            text1,
            style: TextStyle(
              color: textColors,
              fontSize: 30,
              fontFamily: 'Amiri',
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              color: textColors,
              fontSize: 30,
              fontFamily: 'Amiri',
            ),
          ),
        ],
      ),
    );
  }
}