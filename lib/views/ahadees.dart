import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';
import 'package:zekr_wa_noor/views/widgets/custom_app_bar_for_views.dart';

class Ahadees extends StatefulWidget {
  const Ahadees({super.key});
  @override
  State<StatefulWidget> createState() => _Ahadees();
}

class _Ahadees extends State<Ahadees> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColors,
      
      appBar: CustomAppBarForViews(title: 'أحاديث عن الذكر'),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: thingColors,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(15, 30, 15, 15),
                child: Text(
                  '''
قُولُ اللَّه تَعالى: أَنَا عِنْدَ ظَنِّ عَبْدِي بِي، وَأَنَا مَعهُ إِذَا ذَكَرَني، فَإن ذَكرَني في نَفْسهِ، ذَكَرْتُهُ في نَفسي، وإنْ ذَكَرَني في ملإٍ، ذكَرتُهُ في ملإٍ خَيْرٍ منْهُمْ ) متَّفقٌ عليهِ

وعَنْهُ قَالَ: قالَ رَسُولُ اللَّه ﷺ: ( سبقَ المُفَرِّدُونَ قالوا: ومَا المُفَرِّدُونَ يَا رسُول اللَّهِ؟ قَالَ: الذَّاكِرُونَ اللَّه كَثيرًا والذَّاكِراتُ ) رواه مسلم

وعنْ عبداللَّه بن بُسْرٍ أنَّ رَجُلًا قَالَ: يَا رسُولَ اللَّهِ، إنَّ شَرائِع الإسْلامِ قَدْ كَثُرتْ علَيَّ، فَأخبرْني بِشيءٍ أتشَبَّثُ بهِ قَالَ: لا يَزالُ لِسَانُكَ رَطْبًا مِنْ ذِكْرِ اللَّهِ. رواهُ الترمذي وقال: حديثٌ حَسَنٌ''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.9,
                    fontSize: 30,
                    fontFamily: 'Amiri',
                    color: textColors,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
