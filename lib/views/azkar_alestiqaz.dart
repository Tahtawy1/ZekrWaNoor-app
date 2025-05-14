import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';
import 'package:zekr_wa_noor/views/widgets/custom_app_bar_for_views.dart';
import 'package:zekr_wa_noor/views/widgets/zekr_card.dart';

class AzkarAlestiqaz extends StatefulWidget {
  const AzkarAlestiqaz({super.key});
  @override
  State<StatefulWidget> createState() => _AzkarAlestiqaz();
}

class _AzkarAlestiqaz extends State<AzkarAlestiqaz> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarForViews(title: 'أذكار الإستيقاظ'),
      body: Container(
        color: backgroundColors,
        child: ListView(
          children: [
            Zekr(
              mainZekr:
                  'الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور',
              loopValue: 1,
            ),
            Zekr(
              mainZekr:
                  'الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه',
              loopValue: 1,
            ),
            Zekr(
              mainZekr:
                  'لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي',
              loopValue: 1,
            ),
          ],
        ),
      ),
    );
  }
}
