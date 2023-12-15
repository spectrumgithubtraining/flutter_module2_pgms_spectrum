import 'package:flutter/material.dart';

class PopUpMenuSample extends StatefulWidget {
  const PopUpMenuSample({super.key});

  @override
  State<PopUpMenuSample> createState() => _PopUpMenuSampleState();
}

class _PopUpMenuSampleState extends State<PopUpMenuSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(child: ListTile(title: Text("Download"),trailing: Icon(Icons.download),)),
                const PopupMenuItem(child: ListTile(title: Text("Download"),trailing: Icon(Icons.download),)),
                const PopupMenuItem(child: Text("click")),
                const PopupMenuItem(child: Text("next"))
              ];
            },
          )
        ],
      ),
    );
  }
}