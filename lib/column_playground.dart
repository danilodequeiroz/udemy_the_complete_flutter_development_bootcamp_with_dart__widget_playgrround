import 'package:flutter/material.dart';

String textContent = "Column\nPlayground";

class ColumnLayoutPlaygroundApp extends StatelessWidget {
  const ColumnLayoutPlaygroundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.red[100],
            body: SafeArea(
              child: Column(
                children: [
                  symmetric(),
                  all()],
              ),
            )
        )
    );
  }
}

symmetric() {
  return Container(
    height: 128,
    width: 128,
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
    color: Colors.orange[600],
    child: Text(textContent),
  );
}

all() {
  return Container(
    height: 128,
    width: 128,
    margin: const EdgeInsets.all(10),
    color: Colors.orange[600],
    child: Text(textContent),
  );
}

fromLTRB() {
  return Container(
    height: 128,
    width: 128,
    margin: const EdgeInsets.fromLTRB(80, 20, 120, 60),
    color: Colors.orange[600],
    child: Text(textContent),
  );
}

onlyLeft40() {
  return Container(
    height: 128,
    width: 128,
    margin: const EdgeInsets.only(left: 40),
    color: Colors.orange[600],
    child: Text(textContent),
  );
}

onlyRight40() {
  return Container(
    height: 128,
    width: 128,
    margin: const EdgeInsets.only(right: 40),
    color: Colors.orange[600],
    child: Text(textContent),
  );
}

onlyTop40() {
  return Container(
    height: 128,
    width: 128,
    margin: const EdgeInsets.only(top: 40),
    color: Colors.orange[600],
    child: Text(textContent),
  );
}

onlyBottom40() {
  return Container(
    height: 128,
    width: 128,
    margin: const EdgeInsets.only(bottom: 40),
    color: Colors.orange[600],
    child: Text(textContent),
  );
}

fromLTRBWithInnerPadding() {
  return Container(
    height: 128,
    width: 128,
    margin: const EdgeInsets.fromLTRB(80, 20, 120, 60),
    padding: const EdgeInsets.all(20),
    color: Colors.orange[600],
    child: Text(textContent),
  );
}
