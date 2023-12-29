import 'package:flutter/material.dart';

class TableSample extends StatefulWidget {
  const TableSample({super.key});

  @override
  State<TableSample> createState() => _TableSampleState();
}

class _TableSampleState extends State<TableSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter table sample"),
      ),
      body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(width: 1, color: Colors.black45),
              children: [
                TableRow(children: [
                  TableCell(child: Text("S/N")),
                  TableCell(child: Text("Name")),
                  TableCell(child: Text("Address")),
                  TableCell(child: Text("Nation")),
                ]),
                TableRow(children: [
                  TableCell(child: Text("1.")),
                  TableCell(child: Text("Krishna Karki")),
                  TableCell(child: Text("Nepal, Kathmandu")),
                  TableCell(child: Text("Nepal"))
                ]),
                TableRow(children: [
                  TableCell(child: Text("2.")),
                  TableCell(child: Text("John Wick")),
                  TableCell(child: Text("New York, USA")),
                  TableCell(child: Text("USA"))
                ]),
                TableRow(children: [
                  TableCell(child: Text("3.")),
                  TableCell(child: Text("Fedrick May")),
                  TableCell(child: Text("Berlin, Germany")),
                  TableCell(child: Text("Germany"))
                ]),
              ],
            ),
          )),
    );
  }
}