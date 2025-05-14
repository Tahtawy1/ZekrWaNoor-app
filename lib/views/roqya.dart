import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:zekr_wa_noor/data/theme.dart';
import 'package:zekr_wa_noor/views/widgets/custom_app_bar_for_views.dart';
import 'package:zekr_wa_noor/views/widgets/custom_text.dart';
import 'package:zekr_wa_noor/views/widgets/roqya_player.dart';

class Roqya extends StatefulWidget {
  const Roqya({super.key});

  @override
  State<StatefulWidget> createState() => _Roqya();
}

class _Roqya extends State<Roqya> {
  final AudioPlayer player = AudioPlayer();

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarForViews(title: 'الرقية الشرعية'),
      body: Container(
        padding: EdgeInsets.only(top: 80),
        height: double.infinity,
        width: double.infinity,
        color: backgroundColors,
        child: Column(
          children: [
            CustomText(text: 'الرقية الشرعية', size: 40),
            CustomText(text: 'د/ محمد بن يوسف الجوراني العسقلاني', size: 30),
            SizedBox(height: 30),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(1, 3),
                    blurRadius: 3,
                  ),
                ],
                color: thingColors,
                borderRadius: BorderRadius.circular(20),
              ),
              child: RoqyaPlayer(player: player),
            ),
          ],
        ),
      ),
    );
  }
}