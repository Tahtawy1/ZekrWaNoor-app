import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:zekr_wa_noor/data/theme.dart';

class RoqyaPlayer extends StatelessWidget {
  const RoqyaPlayer({
    super.key,
    required this.player,
  });

  final AudioPlayer player;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () async {
            await player.play(
              AssetSource('sounds/Roqya.mp3'),
            );
          },
          child: Icon(
            Icons.play_arrow,
            color: textColors,
            size: 40,
          ),
        ),
        SizedBox(width: 40),
        MaterialButton(
          onPressed: () async {
            await player.stop();
          },
          child: Icon(
            Icons.stop,
            color: textColors,
            size: 40,
          ),
        ),
      ],
    );
  }
}
