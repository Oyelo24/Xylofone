import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(Colors.red, 1),
            buildKey(Colors.orange, 2),
            buildKey(Colors.yellow, 3),
            buildKey(Colors.green, 4),
            buildKey(Colors.teal, 5),
            buildKey(Colors.blue, 6),
            buildKey(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}

void playSound(int soundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNumber.wav'));
}

Expanded buildKey(Color color, int soundNumber) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playSound(soundNumber);
      },
      child: Container(color: color),
    ),
  );
}

