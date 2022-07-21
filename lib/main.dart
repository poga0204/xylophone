import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }

  Expanded fun({Color color, int number}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => color)),
        onPressed: () {
          play(number);
        },
        child: null,
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
            children: [
              fun(color: Colors.red, number: 1),
              fun(color: Colors.yellow, number: 2),
              fun(color: Colors.green, number: 3),
              fun(color: Colors.orange, number: 4),
              fun(color: Colors.blue, number: 5),
              fun(color: Colors.teal, number: 6),
              fun(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
