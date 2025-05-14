import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';

class LastButton extends StatelessWidget {
  const LastButton({
    super.key,
    required this.text,
    required this.onPressed, required this.isDrawerButton,
  });
  final bool isDrawerButton;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: isDrawerButton ?50 :150,
      minWidth: isDrawerButton ?double.infinity :150,
      color: isDrawerButton ? const Color.fromARGB(255, 14, 14, 108) : thingColors,
      shape: RoundedRectangleBorder(
        borderRadius: isDrawerButton ? BorderRadius.zero : BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: isDrawerButton ? Colors.white : textColors,
              fontSize: isDrawerButton ? 25 : 30,
              fontFamily: 'Amiri',
            ),
          ),
        ],
      ),
    );
  }
}
