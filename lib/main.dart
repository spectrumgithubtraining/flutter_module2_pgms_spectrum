import 'package:flutter/material.dart';
import 'package:flutter_module2_pgms_spectrum/state_management/provider/controller/counternotifier.dart';
import 'package:flutter_module2_pgms_spectrum/state_management/provider/view/countpage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterNotifier(),
      child: const MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}