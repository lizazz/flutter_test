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
    Future _showIt() {
      return showDialog(
          context: inContext,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('We come in peace...'),
              content: Center(
                child: Text("...shoot to kill shoot to kill shoot to kill"),
              ),
              actions: [
                FlatButton(onPressed: () { Navigator.of(context).pop();},
                    child: Text('Beam me up, Scotty')
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