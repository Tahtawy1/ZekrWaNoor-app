import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';

class CustomAppBarForViews extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarForViews({
    super.key, required this.title,
  });
  final String title;
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.exit_to_app,
          color: textColors,
        ),
      ),
      toolbarHeight: 50,
      backgroundColor: thingColors,
      title: SizedBox(
        width: double.infinity,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 26,
            fontFamily: 'Amiri',
            color: textColors,
          ),
          textAlign: TextAlign.end,
        ),
      ),
    );
  }
}
