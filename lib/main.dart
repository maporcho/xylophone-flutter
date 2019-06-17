import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String fileName) {
    final player = AudioCache();
    player.play(fileName);
  }

  Widget xylophoneKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound('note$soundNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xylophoneKey(color: Colors.red, soundNumber: 1),
              xylophoneKey(color: Colors.orange, soundNumber: 2),
              xylophoneKey(color: Colors.yellow, soundNumber: 3),
              xylophoneKey(color: Colors.green[600], soundNumber: 4),
              xylophoneKey(color: Colors.green[900], soundNumber: 5),
              xylophoneKey(color: Colors.blue, soundNumber: 6),
              xylophoneKey(color: Colors.indigo, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
