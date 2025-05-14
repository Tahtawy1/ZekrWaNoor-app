import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.widget,
    required this.inset,
  });
  final Widget widget;
  final EdgeInsets inset;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: inset,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0),
              offset: Offset(1, 3),
              blurRadius: 3,
            ),
          ],
        ),
        child: widget);
  }
}