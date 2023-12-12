import 'package:flutter/material.dart';
class TextAreaSample extends StatefulWidget {
  const TextAreaSample({Key? key}) : super(key: key);
  @override
  _TextAreaSampleState createState() => _TextAreaSampleState();
}
class _TextAreaSampleState extends State<TextAreaSample> {
  TextEditingController controllerVariable = TextEditingController();
  String data = "Data will be shown here";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controllerVariable,
              maxLength: 10,
              obscureText: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "User Name",
                hintText: "Enter Your User Name",
                prefix: Text("MR"),
                suffix: Text("ok"),
                hintStyle: TextStyle(fontSize: 20),
                labelStyle: TextStyle(fontSize: 40),
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  data = controllerVariable.text;
                });
//print(controllerVariable.text);
              },
              child: Text("Click Here"),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 20), // Added text style
            ),
          ],
        ),
      ),
    );
  }
}