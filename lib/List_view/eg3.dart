import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> names = ["Anu", "Seema", "Joel"];
  List<String> messages = ["hi", "gd mng", "gd nt"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            subtitle: Text(messages[index]),
            leading: const CircleAvatar(backgroundColor: Colors.red,radius: 20),
            title: Text(names[index]),
          );
        },
      ),
    );
  }
}