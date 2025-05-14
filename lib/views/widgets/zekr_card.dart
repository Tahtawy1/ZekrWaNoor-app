import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';
import 'package:zekr_wa_noor/services/counter_button.dart';

class Zekr extends StatelessWidget {
  final String first;
  final String mainZekr;
  final String infoZekr;
  final int loopValue;
  const Zekr({
    super.key,
    this.first = '',
    this.infoZekr = '',
    required this.mainZekr,
    required this.loopValue,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0),
            offset: Offset(1, 3),
            blurRadius: 3,
          ),
        ],
        color: thingColors,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(15, 30, 15, 15),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            first,
            textAlign: TextAlign.right,
            style: TextStyle(
              height: 1.9,
              fontSize: 22,
              fontFamily: 'Amiri',
              color: firstZekr,
            ),
          ),
          SizedBox(height: 15),
          Text(
            mainZekr,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.9,
              fontSize: 30,
              fontFamily: 'Amiri',
              color: textColors,
            ),
          ),
          Text(
            infoZekr,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.9,
              fontSize: 22,
              fontFamily: 'Amiri',
              color: firstZekr,
            ),
          ),
          CounterButton(maxValue: loopValue),
        ],
      ),
    );
  }
}