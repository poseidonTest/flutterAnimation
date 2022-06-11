import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: const Text('Hero Demo SecondPage'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'icon',
            child: Icon(
              Icons.sentiment_satisfied,
              size: 200.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
