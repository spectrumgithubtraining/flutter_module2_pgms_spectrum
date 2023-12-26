import 'package:flutter/material.dart';


class TabBarSample extends StatefulWidget {
  const TabBarSample({super.key});

  @override
  State<TabBarSample> createState() => _TabBarSampleState();
}

class _TabBarSampleState extends State<TabBarSample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 40,
          bottom: TabBar(
              labelColor: Colors.yellow,
              indicatorColor: Colors.red,
              unselectedLabelColor: Colors.white,
              // dividerColor: Colors.green,
              // indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Chat"),
                )
              ]),
          actions: [
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_sharp),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text("New group")),
                  const PopupMenuItem(child: Text("New broadband")),
                  const PopupMenuItem(child: Text("Linked devices")),
                  const PopupMenuItem(child: Text("Starred messages")),
                  const PopupMenuItem(child: Text("Payments")),
                  const PopupMenuItem(child: Text("Settings"))
                ];
              },
            )
          ],
        ),
        body: const TabBarView(children: [
          Center(child: Text("Page 1")),
          Center(child: Text("Page 2")),
          Center(child: Text("Page 3")),
          //  Center( child: Text("Page 3")),
        ]),
        floatingActionButton: FloatingActionButton(
          tooltip: "add",
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}