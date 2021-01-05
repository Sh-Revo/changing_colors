import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => new _MyPageState();
  
}

class _MyPageState extends State<MyPage> {
  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Changing colors')),
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Text("Hello"),
          ),
        ),

      ),
      
    );
  }
}