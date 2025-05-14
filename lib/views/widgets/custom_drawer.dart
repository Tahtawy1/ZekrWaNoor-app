import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/views/ahadees.dart';
import 'package:zekr_wa_noor/data/theme.dart';
import 'package:zekr_wa_noor/views/widgets/last_button.dart';
import 'package:zekr_wa_noor/views/widgets/team_logo.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 123, 105, 77),
      child: DrawerBody(),
    );
  }
}

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                color: backgroundColors,
                child: Image.asset('images/zekrWaNoor.jpg'),
              ),
              SizedBox(height: 30),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Ahadees()));
                },
                child: LastButton(
                  text: 'أحاديث عن الذكر',
                  isDrawerButton: true,
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Ahadees())),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TeamLogo(),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(right: 10),
                  width: double.infinity,
                  child: Text(
                    'By Tahtawy',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 23, 86),
                      fontFamily: 'Amiri',
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  )
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
