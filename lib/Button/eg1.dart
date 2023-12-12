import 'package:flutter/material.dart';

class ButtonSample extends StatefulWidget {
  const ButtonSample({super.key});

  @override
  State<ButtonSample> createState() => _ButtonSampleState();
}

class _ButtonSampleState extends State<ButtonSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button sample"),
      ),
      body: Container(
          child: Column(
        children: [
          TextButton(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.red),
                  textStyle: MaterialStatePropertyAll(
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
              onPressed: () {},
              child: Text("Text button")),
          TextButton.icon(
              onPressed: () {}, icon: Icon(Icons.home), label: Text("Home")),
          ElevatedButton(
              style: ButtonStyle(
                  textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 30)),
                  foregroundColor: MaterialStatePropertyAll(Colors.green),
                  backgroundColor: MaterialStatePropertyAll(Colors.pink)),
              onPressed: () {},
              child: Text("Elevated button")),
          OutlinedButton(
              style: ButtonStyle(
                  side: MaterialStatePropertyAll(
                      BorderSide(color: Colors.black, width: 2))),
              onPressed: () {},
              child: Text("Outlined button")),
          IconButton(onPressed: () {
            
          }, icon:Icon(Icons.home))
        ],
      )),
    );
  }
}
