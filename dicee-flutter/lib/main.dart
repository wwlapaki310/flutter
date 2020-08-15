import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget{
  @override
  _DicePageState createState() =>_DicePageState();
}


class _DicePageState extends State<DicePage> {
  int leftDiceNumber =3;
  int rightDiceNumber=2;
  void changeDiceFace(){
    setState(() {
      leftDiceNumber=1+Random().nextInt(6);
      rightDiceNumber=1+Random().nextInt(6);
      print('DiceNumber=$leftDiceNumber');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                  changeDiceFace();
                  print('Right button got pressed');
                  print('DiceNumber=$rightDiceNumber');
                },
                child: Image.asset('images/dice$rightDiceNumber.png')
            ),
          ),
        ],
      ),
    );
  }
}


