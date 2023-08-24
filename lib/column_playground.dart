import 'package:flutter/material.dart';

String textContent = "Column\nPlayground";
double measurement = 96;

class ColumnLayoutPlaygroundApp extends StatelessWidget {
  const ColumnLayoutPlaygroundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.red[100],
            body: SafeArea(
              child: Row(
                children: [
                  Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (MapEntry entry in [
                          Colors.blue[500],
                          Colors.red[500],
                          Colors.white
                        ].asMap().entries)
                          container(index: entry.key, color: entry.value),
                      ]),
                  Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        for (MapEntry entry in [
                          Colors.blue[500],
                          Colors.red[500],
                          Colors.white
                        ].asMap().entries)
                          container(index: entry.key, color: entry.value),
                      ]),
                  Column(
                      verticalDirection: VerticalDirection.up,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        for (MapEntry entry in [
                          Colors.blue[500],
                          Colors.red[500],
                          Colors.white
                        ].asMap().entries)
                          container(index: entry.key, color: entry.value),
                      ]),
                  Column(
                      verticalDirection: VerticalDirection.down,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        for (MapEntry entry in [
                          Colors.blue[500],
                          Colors.red[500],
                          Colors.white
                        ].asMap().entries)
                          container(index: entry.key, color: entry.value),
                      ]),
                ],
              ),
            )));
  }
}

Container container({int? index, Color? color}) {
  return Container(
    height: measurement,
    width: measurement,
    color: color,
    child: Text("$textContent${index == 0 ? "" : " $index"}"),
  );
}
