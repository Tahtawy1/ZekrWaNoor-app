import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/views/home_view.dart';
import 'package:device_preview/device_preview.dart';
// void main() {
//   runApp(Builder(builder: (context) => NoorWaZekr()));
// }

void main() {
  runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => NoorWaZekr()));
}
class NoorWaZekr extends StatelessWidget {
  const NoorWaZekr({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: HomePage()));
  }
}
