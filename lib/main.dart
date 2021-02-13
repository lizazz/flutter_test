import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Home()));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
     _showIt() {
       showModalBottomSheet(context: inContext,
           builder: (BuildContext inContext) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("What's your favorite pet?"),
                  FlatButton(
                      onPressed: () {Navigator.of(inContext).pop();},
                      child: Text("Dog")
                  ),
                  FlatButton(
                      onPressed: () {Navigator.of(inContext).pop();},
                      child: Text("Cat")
                  ),
                  FlatButton(
                      onPressed: () {Navigator.of(inContext).pop();},
                      child: Text("Ferret")
                  )
                ],
              );
           }
       );
    }

    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Show it"),
          onPressed: _showIt,
        ),
      )
    );
  }
}