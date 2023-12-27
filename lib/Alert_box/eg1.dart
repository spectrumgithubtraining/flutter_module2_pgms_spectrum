import 'package:flutter/material.dart';

class AlertBoxSample extends StatefulWidget {
  const AlertBoxSample({super.key});
  @override
  State<AlertBoxSample> createState() => _AlertBoxSampleState();
}

class _AlertBoxSampleState extends State<AlertBoxSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
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
                child: const Text("Click"))
          ],
        ),
      ),
    );
  }

  _showAlert() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            TextButton(onPressed: () {}, child: const Text("Yes")),
            TextButton(onPressed: () {}, child: const Text("No"))
          ],
          title: const Text("do you want to exit from the app?"),
        );
      },
    );
  }
}
