import 'package:flutter/material.dart';

class RotationAni extends StatefulWidget {
  const RotationAni({Key key}) : super(key: key);

  @override
  State<RotationAni> createState() => _RotationAniState();
}

class _RotationAniState extends State<RotationAni>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo App',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('RotationTransition Demo'),
        ),
        body: RotationTransition(
          alignment: Alignment.center,
          child: Center(
            child: IconButton(
              iconSize: 200.0,
              color: Colors.blue,
              icon: Icon(Icons.sentiment_satisfied),
              onPressed: () {
                if (_controller.duration.inSeconds == 1) {
                  _controller.duration = const Duration(seconds: 3);
                } else {
                  _controller.duration = const Duration(seconds: 1);
                }
                _controller.repeat();
              },
            ),
          ),
          turns: _controller,
        ),
      ),
    );
  }
}
