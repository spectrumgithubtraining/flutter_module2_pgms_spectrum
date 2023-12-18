import 'package:flutter/material.dart';

class SnackbarSample extends StatefulWidget {
  const SnackbarSample({super.key});

  @override
  State<SnackbarSample> createState() => _SnackbarSampleState();
}

class _SnackbarSampleState extends State<SnackbarSample> {
  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Hi, this is GFG\'s SnackBar'),
      backgroundColor: Colors.green,
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(5),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  showSnackbar();
                });
              },
              child: Text("Show Snack bar"))
        ],
      )),
    );
  }
}
