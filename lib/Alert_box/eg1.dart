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
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
// elevation: 500,
                          content: const TextField(),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Yes")),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("No"))
                          ],
                          title: const Text("do you want to exit from thapp?"),
                        );
                      },
                    );
                  });
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
