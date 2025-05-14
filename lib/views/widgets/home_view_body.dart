import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';
import 'package:zekr_wa_noor/views/widgets/home_body_list_view.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: Container(
        decoration: BoxDecoration(color: backgroundColors),
        width: double.infinity,
        child: HomeBodyListView(),
      ))
    ]);
  }
}








