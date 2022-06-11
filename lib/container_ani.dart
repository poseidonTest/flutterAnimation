import 'package:flutter/material.dart';

class ContainerAni extends StatefulWidget {
  const ContainerAni({Key key}) : super(key: key);

  @override
  State<ContainerAni> createState() => _ContainerAniState();
}

class _ContainerAniState extends State<ContainerAni> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: const Text('Container Demo'),
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          // child: Container(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            child: Text(
              'This is Container Example.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            padding: EdgeInsets.all(80.0),
            margin: EdgeInsets.all(50.0),
            color: Colors.blue,
            width: selected ? 250.0 : 310.0,
            height: selected ? 250.0 : 310.0,
          ),
        ),
      ),
    );
  }
}
