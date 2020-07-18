import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Pergunte-me Algo'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var textImage = ['YES', 'NO', 'ASK AGAIN LATER', 'THE ANSWER IS YES', 'I HAVE NO IDEA'];
  var textNumber = 0;

  void randomDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(5) + 1;
      textNumber = leftDiceNumber -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: (){
              randomDice();
            },
            child: Image.asset('images/ball$leftDiceNumber.png'),
          ),
          Text(
            textImage[textNumber],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
