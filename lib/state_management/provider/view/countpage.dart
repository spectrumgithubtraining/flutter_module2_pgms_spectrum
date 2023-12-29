import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/counternotifier.dart';
import 'countnxt.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CounterNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Consumer widget listens to changes in the CounterModel
            Consumer<CounterNotifier>(
              builder: (context, count, child) {
                return Text(
                  'Count: ${count.count}',
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      count.incCount();
                    },
                    child: const Text("Increment")),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      count.decCount();
                    },
                    child: const Text("Deccrement")),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CounterNxtPage(),));
            }, child: Text("Go nxt page"))
          ],
        ),
      ),
    );
  }
}
