import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text, required this.size,
  });
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: textColors,
        fontFamily: 'Amiri',
        fontWeight: FontWeight.w500,
        fontSize: size,
      ),
    );
  }
}
