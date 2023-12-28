import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show the alert dialog
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Alert Dialog Title'),
                  content: Text('This is the content of the alert dialog.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        // Close the alert dialog
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
