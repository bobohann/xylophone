import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color color, String soundNumber, String soundName) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
        child: Text(
          soundName,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, '1', "ဒို"),
              buildKey(Colors.orange, '2', "ေရ"),
              buildKey(Colors.yellow, '3', "မီ"),
              buildKey(Colors.green, '4', "ဖာ"),
              buildKey(Colors.teal, '5', "ဆို"),
              buildKey(Colors.blue, '6', "လာ"),
              buildKey(Colors.purple, '7', "တီ"),
            ],
          ),
        ),
      ),
    );
  }
}
