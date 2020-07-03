import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DecisionMaker(),
    );
  }
}

class DecisionMaker extends StatefulWidget {
  @override
  _DecisionMakerState createState() => _DecisionMakerState();
}

class _DecisionMakerState extends State<DecisionMaker> {
  List options = [
    ' YES',
    'NO',
    'I HAVE NO IDEA',
    'ASK ME AGAIN',
    'WAIT A MOMENT'
  ];
  int answer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: GestureDetector(
          child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 150,
              child: CircleAvatar(
                radius: 84,
                child: Center(
                    child: Text(
                  options[answer],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              )),
          onTap: () {
            setState(
              () {
                answer = Random().nextInt(5);
              },
            );
          },
        ),
      ),
    );
  }
}
