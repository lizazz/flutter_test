import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Center(
        child: PopupMenuButton(
          onSelected: (String result) {print(result);},
          itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<String>>[
              PopupMenuItem(
                  value: "copy", child: Text("Copy")
              ),
              PopupMenuItem(child: Text("Cut"), value: 'cut',),
              PopupMenuItem(child: Text("Paste"), value: "paste")
            ]
        )
      )
    ),
    );
  }
}


