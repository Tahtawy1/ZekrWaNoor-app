import 'package:flutter/material.dart';

class TeamLogo extends StatelessWidget {
  const TeamLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              image: DecorationImage(
                  image: AssetImage('images/Bright.jpg')),
            )),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.all(5),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 10),
            color: const Color.fromARGB(255, 0, 0, 0),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 34, 34, 34),
                offset: Offset(1, 3),
                blurRadius: 3,
              ),
            ],
          ),
          child: Text(
            'Bright Future |Mobile Development',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 246, 231),
              fontSize: 17,
              fontFamily: 'Amiri',
            ),
          ),
        ),
      ],
    );
  }
}
