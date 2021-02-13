import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Home()));
  }
}

class Home extends StatelessWidget {
  Future<void> _selectDate(inContext) async {
      DateTime selectedDate = await showDatePicker(
          context: inContext, 
          initialDate: DateTime.now(),
          firstDate: DateTime(2021), 
          lastDate: DateTime(2025)
      );
      print(selectedDate);
  }
  Future<void> _selectTime(inContext) async {
      TimeOfDay selectedTime = await showTimePicker(
          context: inContext, 
          initialTime: TimeOfDay.now()
      );
      print(selectedTime);
  }
  @override
  Widget build(BuildContext inContext) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 50,),
          RaisedButton(
              child: Text("Test DatePicker"),
              onPressed: () => _selectDate(inContext)
          ),
          RaisedButton(
            child: Text("Test TimePicker"),
            onPressed: () => _selectTime(inContext),
          ),
          Dismissible(
            key : GlobalKey(),
            onDismissed: (direction) {print("GoodBye!");},
            child: Container(
              color: Colors.yellow, width: 100, height: 50,
              child: Text('Swipe me')
            ),
          )
        ]
      ),
    );
  }
}