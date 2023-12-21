import 'package:flutter/material.dart';
class RadioButtonSample extends StatefulWidget {
  const RadioButtonSample({super.key});
  @override
  State<RadioButtonSample> createState() => _RadioButtonSampleState();
}
enum gender { male, female, other }
class _RadioButtonSampleState extends State<RadioButtonSample> {
  var _gender = gender.male;
  var data = 'data is shown here';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Row(
          children: [
            Radio(
              value: gender.male,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender=value!;
                });
              },
            ),
            const Text("Male")],
        ),
        Row(
          children: [
            Radio(
              value: gender.female,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender=value!;
                });
              },
            ),
            const Text("Female")
          ],
        ),
        RadioListTile(
          title: Text("Others"),
          subtitle: Text("For other category"),
          value: gender.other,
          groupValue: _gender,
          onChanged: (value) {
            setState(() {
              _gender=value!;
            });
          },
        ),
        ElevatedButton(onPressed: (){
          setState(() {
            data=_gender.name;
          });
        }, child: const Text("Show data")),
        Text(data)
      ]),
    );
  }
}