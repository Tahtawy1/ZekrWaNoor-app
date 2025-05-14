import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/services/theme_changer_service.dart';
import 'package:zekr_wa_noor/views/widgets/custom_app_bar.dart';
import 'package:zekr_wa_noor/views/widgets/custom_drawer.dart';
import 'package:zekr_wa_noor/views/widgets/home_view_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          isOn: isOn,
          onPressed: () {
            setState(() {
              isOn = !isOn;
              themeChanger(isOn);
            });
          }),
      drawer: CustomDrawer(),
      body: HomeViewBody(),
    );
  }
}
