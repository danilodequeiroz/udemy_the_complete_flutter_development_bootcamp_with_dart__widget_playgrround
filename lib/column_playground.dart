import 'package:flutter/material.dart';

String textContent = "Column\nPlayground";
const double measurement = 64;
final PageController controller = PageController(initialPage: 1);

class ColumnLayoutPlaygroundApp extends StatelessWidget {
  const ColumnLayoutPlaygroundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.red[100],
            body: SafeArea(
                child: PageView(
                  scrollDirection: Axis.horizontal,

                  /// Use [Axis.vertical] to scroll vertically.
                  controller: controller,

                  /// Event though we're playing with Container,
                  /// we are using Columns here in order to provide
                  /// support with the way PageView handle height
                  /// when populate
                  children: <Widget>[
                    page1(),
                    page2(),
                    page3(),
                    page4(),
                    page5(),
                  ],
                ))));
  }

  page1() {
    return Row(
      children: [
        Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (MapEntry entry in [
                Colors.blue[500],
                Colors.red[500],
                Colors.white
              ]
                  .asMap()
                  .entries)
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
              ]
                  .asMap()
                  .entries)
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
              ]
                  .asMap()
                  .entries)
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
              ]
                  .asMap()
                  .entries)
                container(index: entry.key, color: entry.value),
            ]),
        Column(
            verticalDirection: VerticalDirection.down,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (MapEntry entry in [
                Colors.blue[500],
                Colors.red[500],
                Colors.white
              ]
                  .asMap()
                  .entries)
                container(index: entry.key, color: entry.value),
            ]),
        Column(
            verticalDirection: VerticalDirection.down,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (MapEntry entry in [
                Colors.blue[500],
                Colors.red[500],
                Colors.white
              ]
                  .asMap()
                  .entries)
                container(index: entry.key, color: entry.value),
            ]),
      ],
    );
  }

  page2() {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          container(
              index: 1,
              color: Colors.red,
              height: 100,
              width: 100),
          container(
              index: 2,
              color: Colors.blue,
              height: 100,
              width: double.infinity),
          container(index: 3,
              color: Colors.white,
              height: 100,
              width: 100),
        ]);
  }

  page3() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          container(
            index: 1,
            color: Colors.red,
            height: 100,
          ),
          container(
              index: 2,
              color: Colors.blue,
              height: 100,
              width: 100 /// doesn't matter this value when parent
            /// is crossAxisAlignment: CrossAxisAlignment.stretch
          ),
          container(index: 3,
            color: Colors.white,
            height: 100,
          ),
        ]);
  }

  page4() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          container(
            index: 1,
            color: Colors.red,
            height: 100,
          ),
          const SizedBox(
            height: 10,
            child: ColoredBox(color: Colors.yellow),
          ),
          container(
              index: 2,
              color: Colors.blue,
              height: 100,
              width: 100 /// doesn't matter this value when parent
            /// is crossAxisAlignment: CrossAxisAlignment.stretch
          ),
          container(index: 3,
            color: Colors.white,
            height: 100,
          ),
        ]);
  }


  page5() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          container(
            index: 1,
            color: Colors.red,
            height: 100,
          ),
          const SizedBox(
            width: 10,
            child: ColoredBox(color: Colors.green),
          ),
          const SizedBox(
            height: 10, /// doesn't matter this value when parent
            /// is a Row , since it's orientated horizontally
            child: ColoredBox(color: Colors.yellow),
          ),
          container(
              index: 2,
              color: Colors.blue,
              height: 100,
          ),
          container(index: 3,
            color: Colors.white,
            height: 100,
          ),
        ]);
  }


  Container container({double? height = measurement,
    double? width = measurement,
    int? index,
    Color? color}) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: Text("$textContent${index == 0 ? "" : " $index"}"),
    );
  }
}
