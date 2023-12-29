import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastNotificationSample extends StatefulWidget {
  const ToastNotificationSample({super.key});

  @override
  State<ToastNotificationSample> createState() =>
      _ToastNotificationSampleState();
}

class _ToastNotificationSampleState extends State<ToastNotificationSample> {
  showToastNotification() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show toast message"),
      ),
      body: Center(
          child: Center(
            child: ElevatedButton(
                onPressed: () => showToastNotification(),
                child: const Text("Show toast notification")),
          )),
    );
  }
}