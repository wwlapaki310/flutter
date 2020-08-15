import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber){
    final player=AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey(int soundNumber,color){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(soundNumber);
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
              buildKey(1,Colors.red),
              buildKey(2,Colors.orange),
              buildKey(3,Colors.yellow),
              buildKey(4,Colors.greenAccent),
              buildKey(5,Colors.green),
              buildKey(6,Colors.blue),
              buildKey(7,Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
