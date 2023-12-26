import 'package:flutter/material.dart';
class ListViewSampleOne extends StatefulWidget {
  const ListViewSampleOne({super.key});

  @override
  State<ListViewSampleOne> createState() => _ListViewSampleOneState();
}

class _ListViewSampleOneState extends State<ListViewSampleOne> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.green[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            })
    );
  }
}