import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Column(
          children: [
            Container(height: 100),
            DataTable(
                sortColumnIndex: 1,
                columns: [
                  DataColumn(label: Text('First name')),
                  DataColumn(label: Text("Last Name"))
                ], 
                rows: [
                  DataRow(
                      cells: [
                        DataCell(Text("Leia")),
                        DataCell(Text("Organa"), showEditIcon: true)
                      ]
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Luke")),
                      DataCell(Text("Skywalker"))
                    ]
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Han")),
                      DataCell(Text("Solo"))
                    ]
                  )
                ]
            )
          ])
    ),
    );
  }
}


