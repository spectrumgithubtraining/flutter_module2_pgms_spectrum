import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});
  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(
          height: 300,
          width: 300,
          color: Colors.yellow,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.pink,
        )
      ]),
    );
  }
}
