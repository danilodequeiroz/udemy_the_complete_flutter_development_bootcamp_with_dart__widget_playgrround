import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerLayoutPlaygroundApp());
}

String textContent = "Hello";

final PageController controller = PageController(initialPage: 1);

class ContainerLayoutPlaygroundApp extends StatelessWidget {
  const ContainerLayoutPlaygroundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red[100],
          body: SafeArea(
              // child: symmetric(),
              // child: all(),
              // child: fromLTRB(),
              // child: onlyTop40(),
              // child: onlyBottom40(),
              // child: onlyLeft40(),
              // child: onlyRight40(),
              // child: fromLTRBWithInnerPadding()
              child: PageView(
            scrollDirection: Axis.horizontal,
            /// Use [Axis.vertical] to scroll vertically.
            controller: controller,

            /// Event though we're playing with Container,
            /// we are using Columns here in order to provide
            /// support with the way PageView handle height
            /// when populate
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [symmetric()]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [all()]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [fromLTRB()],
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [onlyTop40()]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [onlyBottom40()]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [onlyLeft40()]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [onlyRight40()]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [fromLTRBWithInnerPadding()]),
            ],
          ))),
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
