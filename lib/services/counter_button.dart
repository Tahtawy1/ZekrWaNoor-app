import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';

class CounterButton extends StatefulWidget {
  final int maxValue;
  const CounterButton({super.key, required this.maxValue});

  @override
  State<StatefulWidget> createState() => _Counter();
}

class _Counter extends State<CounterButton> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        height: 50,
        width: widget.maxValue > 9 ? 170 : 130,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0),
              offset: Offset(1, 3),
              blurRadius: 3,
            ),
          ],
          color: backgroundColors,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '$i / ${widget.maxValue}',
              style: TextStyle(
                color: i == widget.maxValue
                    ? const Color.fromARGB(255, 0, 193, 19)
                    : textColors,
                fontSize: 25,
              ),
            ),
            IconButton(
              iconSize: 25,
              onPressed: () {
                if (i < widget.maxValue) {
                  i++;
                  setState(() {});
                }
              },
              icon: i == widget.maxValue
                  ? Icon(
                      Icons.check,
                      color: const Color.fromARGB(255, 0, 193, 19),
                    )
                  : Icon(Icons.add, color: textColors),
            ),
          ],
        ),
      ),
    );
  }
}