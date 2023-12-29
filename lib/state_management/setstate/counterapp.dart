import 'package:flutter/material.dart';

import 'countnxt.dart';


class CounterSample extends StatefulWidget {
  const CounterSample({super.key});

  @override
  State<CounterSample> createState() => _CounterSampleState();
}

class _CounterSampleState extends State<CounterSample> {
  int count = 0;
  incCount() {
    count = count + 1;
  }

  decCount() {
    count = count - 1;
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild ui each times");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("SetState"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter : $count"),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        incCount();
                      });
                    },
                    child: const Text("Increment")),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        decCount();
                      });
                    },
                    child: const Text("Deccrement")),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CountNxt(incVal: count),
                  ));
                },
                child: Text("Go next page"))
          ],
        ),
      ),
    );
  }
}
