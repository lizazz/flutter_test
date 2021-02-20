import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Column(
        children: [
          CircularProgressIndicator(),
          LinearProgressIndicator(
            value: .25,
            backgroundColor: Colors.yellow,
          ),
          Icon(FontAwesomeIcons.angry),
          Image.asset('img/ron.jpg'),
          Image.network("https://eleksun.com.ua/sites/default/files/styles/gallery_front/public/eleksun_baner.png")
        ],
      )
    ),
    );
  }
}


