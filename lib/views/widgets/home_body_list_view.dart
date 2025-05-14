import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';
import 'package:zekr_wa_noor/views/azkar_alestiqaz.dart';
import 'package:zekr_wa_noor/views/azkar_alnawm.dart';
import 'package:zekr_wa_noor/views/azkar_alsalah.dart';
import 'package:zekr_wa_noor/views/azkar_ba3d_elsalah.dart';
import 'package:zekr_wa_noor/views/azkar_elmasaa.dart';
import 'package:zekr_wa_noor/views/azkar_elsabah.dart';
import 'package:zekr_wa_noor/views/roqya.dart';
import 'package:zekr_wa_noor/views/tsapih.dart';
import 'package:zekr_wa_noor/views/widgets/custom_card.dart';
import 'package:zekr_wa_noor/views/widgets/custom_text.dart';
import 'package:zekr_wa_noor/views/widgets/last_button.dart';
import 'package:zekr_wa_noor/views/widgets/custom_button.dart';

class HomeBodyListView extends StatelessWidget {
  const HomeBodyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 35),
              child: Column(
                children: [
                  CustomText(text: 'أَلَا بِذِكۡرِ ٱللَّهِ', size: 40,),
                  SizedBox(height: 30,),
                  CustomText(text: 'تَطۡمَئِنُّ ٱلۡقُلُوبُ', size: 46,),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCard(
                  inset: EdgeInsets.only(top: 60),
                  widget: MyButton(
                      text1: 'أذكار',
                      text2: 'المساء',
                      onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Azkarelmasaa(),
                            ),
                          )),
                ),
                SizedBox(width: 50),
                MyCard(
                    inset: EdgeInsets.only(top: 20),
                    widget: MyButton(
                        text1: 'أذكار',
                        text2: 'الصباح',
                        onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Azkarelsabah(),
                              ),
                            ))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCard(
                    widget: MyButton(
                      text1: 'أذكار',
                      text2: 'النوم',
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AzkarAlnawm(),
                        ),
                      ),
                    ),
                    inset: EdgeInsets.only(top: 40)),
                SizedBox(width: 50),
                MyCard(
                    widget: MyButton(
                      text1: 'أذكار',
                      text2: 'الإستيقاظ',
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AzkarAlestiqaz(),
                        ),
                      ),
                    ),
                    inset: EdgeInsets.zero),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCard(
                    widget: MyButton(
                        text1: 'أذكار',
                        text2: 'بعد الصلاة',
                        onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => AzkarBa3dElalah(),
                              ),
                            )),
                    inset: EdgeInsets.only(top: 40)),
                SizedBox(width: 50),
                MyCard(
                    widget: MyButton(
                        text1: 'أذكار',
                        text2: 'الصلاة',
                        onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => AzkarAlsalah(),
                              ),
                            )),
                    inset: EdgeInsets.zero)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCard(
                    widget: LastButton(
                        text: 'الرقية الشرعية',
                        isDrawerButton: false,
                        onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Roqya(),
                              ),
                            )),
                    inset: EdgeInsets.only(top: 40)),
                SizedBox(width: 50),
                MyCard(
                    widget: LastButton(
                        text: 'تسابيح',
                        isDrawerButton: false,
                        onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Tsabih(),
                              ),
                            )),
                    inset: EdgeInsets.zero)
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                '''♡ لا تنسونا من صالح دعائكم''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColors,
                  fontFamily: 'Amiri',
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}