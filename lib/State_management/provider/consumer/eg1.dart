import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../changenotifier/eg1.dart';

class ConsumerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Provider Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Consumer widget listens to changes in the CounterModel
              Consumer<CounterNotifier>(
                builder: (context, counterModel, child) {
                  return Text(
                    'Count: ${counterModel.count}',
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
              SizedBox(height: 20),
              // Button to increment the count
              ElevatedButton(
                onPressed: () {
                  // Call the increment method in the CounterModel
                  Provider.of<CounterNotifier>(context, listen: false).increment();
                },
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
