import 'package:flutter/material.dart';
import 'dart:math';

void main() =>runApp(
  MaterialApp(
    home: BallPage(),
  )
);

class BallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget{
  @override
  _BallState createState() =>_BallState();
}

class _BallState extends State<Ball> {
  int BallNumber=1;
  void changeBall(){
    setState(() {
      BallNumber=1+Random().nextInt(5);
      print('BallNumber=$BallNumber');
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
                changeBall();
              },
              child: Image.asset('images/ball$BallNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
