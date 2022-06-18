import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text('Ask Me Anything'),
          ),
          body: Ball(),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    int ballNumber = Random().nextInt(4) + 1;
    return Center(
      child: TextButton(
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
        onPressed: (){
          setState((){
            print(ballNumber);
          });
    },
      ),
    );
  }
}


