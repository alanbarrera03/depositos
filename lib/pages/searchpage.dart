import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Stack(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              color: const Color(0xffeeee00),
              height: 300.0,
              alignment: Alignment.center,
              child: const Text('Fixed Height Content'),
            ),
            Container(
              color: const Color(0xff008000),
              height: 250.0,
              alignment: Alignment.center,
              child: const Text('Fixed Height Content'),
            ),
          ],
        ),
      ]))),
    );
  }
}
