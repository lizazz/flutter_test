import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyApp	createState()	=>	_MyApp();
}

class _MyApp extends State {
  var _color = Colors.red;
  var _fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
              child: Text("I am some text"),
              style: TextStyle(
                color: _color, fontSize: _fontSize
              ),
              duration: const Duration(seconds: 1)
          ),
          RaisedButton(
              child: Text("Enhance! Enhance! Enhance!"),
              onPressed: () {
                _color = Colors.blue;
                _fontSize = 40.0;
                setState(() {});
              }
          )
        ],
      ),
      ),
    ),
    );
  }
}