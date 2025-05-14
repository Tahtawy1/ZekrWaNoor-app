import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.isOn, required this.onPressed});

  final bool isOn;
  final VoidCallback onPressed;
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 50,
      backgroundColor: thingColors,
      title: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              onPressed: onPressed,
              child: Icon(
                isOn ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
                color: textColors,
              ),
            ),
            Text(
              'ذكــر و نـور',
              style: TextStyle(
                fontSize: 26,
                fontFamily: 'Amiri',
                fontWeight: FontWeight.bold,
                color: textColors,
                shadows: [Shadow(color: textShadow)],
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
      leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(Icons.info, color: textColors, size: 32),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
    );
  }
}
