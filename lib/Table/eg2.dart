import 'package:flutter/material.dart';

class TableSample2 extends StatefulWidget {
  const TableSample2({super.key});

  @override
  State<TableSample2> createState() => _TableSample2State();
}

class _TableSample2State extends State<TableSample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table example 2"),
      ),
      body: ListView(
        children: [
          DataTable(columns: const [
            DataColumn(
                label: Text('ID',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Name',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Profession',
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ], rows: const [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('5')),
              DataCell(Text('John')),
              DataCell(Text('Student')),
            ]),
            DataRow(cells: [
              DataCell(Text('10')),
              DataCell(Text('Harry')),
              DataCell(Text('Leader')),
            ]),
            DataRow(cells: [
              DataCell(Text('15')),
              DataCell(Text('Peter')),
              DataCell(Text('Scientist')),
            ]),
          ])
        ],
      ),
    );
  }
}