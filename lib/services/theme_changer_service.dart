
import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';

void themeChanger(bool isDarkMode) {
      if (isDarkMode) {
        thingColors = const Color.fromARGB(255, 0, 14, 83);
        backgroundColors = const Color.fromARGB(255, 7, 50, 144);
        textColors = const Color.fromARGB(255, 217, 217, 217);
        counterColors = backgroundColors;
        firstZekr = const Color.fromARGB(255, 129, 141, 188);
      } else {
        thingColors = const Color.fromARGB(255, 82, 203, 255);
        backgroundColors = const Color.fromARGB(
          255,
          175,
          231,
          254,
        );
        textColors = Colors.black;
        firstZekr = const Color.fromARGB(255, 73, 73, 73);
        counterColors = const Color.fromARGB(255, 70, 79, 114);
      }
  }