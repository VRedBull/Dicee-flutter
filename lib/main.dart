import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text(
            'Dicee',
          ),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //stateful widgets which allows you to change the state of app when something is pressed
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int img = 1, img2 = 1;

  void randInt() {
    //Creating a method in dart
    setState(() {
      //Calls the build function and updates it for user.
      img = Random().nextInt(5) + 1;
      img2 = Random().nextInt(5) + 1;
    });
  }

  //int variable
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randInt();
                //Calling the created randInt() method
              },
              child: Image.asset('images/dice$img.png'),
            ),
          ),
          Expanded(
            //flex: 2,
            //It's decides how much part of the screen should be given according to ratio.
            child: FlatButton(
              onPressed: () {
                randInt(); //Calling the created randInt() method
              },
              child: Image.asset('images/dice$img2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
