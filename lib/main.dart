import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          foregroundColor: Colors.yellow,
          child: Icon(Icons.add),
          onPressed: () {print("Ouch! Stop it!");},
        ),
      body: Row(
        children: [
          Chip(
            avatar: CircleAvatar(
              backgroundImage: AssetImage("img/ron.jpg"),
            ),
            backgroundColor: Colors.grey.shade300,
            label: Text("Frank Zammetti"),
          ),
         Text("Click it!"),
        ],
      )
    ),
    );
  }
}


