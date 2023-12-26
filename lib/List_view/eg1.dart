import 'package:flutter/material.dart';

class ListViewSample extends StatefulWidget {
  const ListViewSample({super.key});

  @override
  State<ListViewSample> createState() => _ListViewSampleState();
}

class _ListViewSampleState extends State<ListViewSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view sample"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
                child: Text("Container 1"),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.indigo,
                child: Text("Container 2"),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrangeAccent,
                child: Text("Container 3"),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
                child: Text("Container 4"),
              ),  Container(
                height: 100,
                width: 100,
                color: Colors.pink,
                child: Text("Container 1"),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.indigo,
                child: Text("Container 2"),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrangeAccent,
                child: Text("Container 3"),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
                child: Text("Container 4"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
