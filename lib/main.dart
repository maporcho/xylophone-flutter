import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String fileName) {
    final player = AudioCache();
    player.play(fileName);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound('note1.wav');
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound('note2.wav');
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound('note3.wav');
                },
              ),
              FlatButton(
                color: Colors.green[600],
                onPressed: () {
                  playSound('note4.wav');
                },
              ),
              FlatButton(
                color: Colors.green[900],
                onPressed: () {
                  playSound('note5.wav');
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound('note6.wav');
                },
              ),
              FlatButton(
                color: Colors.indigo,
                onPressed: () {
                  playSound('note7.wav');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
