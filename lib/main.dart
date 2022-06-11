import 'package:flutter/material.dart';
// import 'container_ani.dart';
import 'first_page.dart';
// import 'rotation_ani.dart';

void main() => runApp(WidgetDemo());

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      home: FirstPage(),
    );
  }
}
// class WidgetDemo extends StatefulWidget {
//   @override
//   WidgetDemoState createState() => WidgetDemoState();
// }

// class WidgetDemoState extends State<WidgetDemo> {
//   @override
//   Widget build(BuildContext context) {
//     // return ContainerAni();
//     return RotationAni();
//   }
// }
