import 'package:flutter/material.dart';

class TextSample extends StatefulWidget {
  const TextSample({super.key});

  @override
  State<TextSample> createState() => _TextSampleState();
}

class _TextSampleState extends State<TextSample> {
  @override
  Widget build(BuildContext context) {
    //to get fullwidth of screen --->use MediaQuery,Textalign
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(,children: [
        Container(
          width: width,
          child: const Text(
            "Hello World",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w300,
              fontSize: 20.0,
              letterSpacing: 2.0,
              wordSpacing: 100.0,
              backgroundColor: Colors.red,
            ),
            textAlign: TextAlign.center,
            textScaleFactor: 3.0,
          ),
        )
      ]),
    );
  }
}