// page 이동을 위한 두 번째 페이지
import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: const Text('Hero Demo FirstPage'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondPage()));
        },
        child: Hero(
          tag: 'icon',
          child: Icon(
            Icons.sentiment_satisfied,
            size: 100.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
