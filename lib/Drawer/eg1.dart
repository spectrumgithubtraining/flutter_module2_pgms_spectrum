import 'package:flutter/material.dart';

class DrawerSample extends StatefulWidget {
  const DrawerSample({super.key});

  @override
  State<DrawerSample> createState() => _DrawerSampleState();
}

class _DrawerSampleState extends State<DrawerSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                  ),
                )),
            ListTile(
                title: Text("Name"),
                leading: Icon(Icons.account_circle_rounded)),
            ListTile(title: Text("Email"), leading: Icon(Icons.email_outlined)),
            ListTile(title: Text("Settings"), leading: Icon(Icons.settings)),
            ListTile(title: Text("Logout"), leading: Icon(Icons.logout_rounded))
          ],
        ),
      ),
    );
  }
}