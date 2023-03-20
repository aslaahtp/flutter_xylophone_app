import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  void playSound(int soundNo) {
    Audio audio = Audio.load('assets/assets_note$soundNo.wav');
    audio.play();
  }

  Expanded buildKey(Color color, int soundNum) {
    return Expanded(
        child: TextButton(
      onPressed: () {
        playSound(soundNum);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
      child: Text(''),
    ));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.purple, 1),
              buildKey(Colors.pink, 2),
              buildKey(Colors.blue, 3),
              buildKey(Colors.yellow, 4),
              buildKey(Colors.red, 5),
              buildKey(Colors.green, 6),
              buildKey(Colors.orange, 7),
            ],
          ),
        ),
      ),
    );
  }
}
