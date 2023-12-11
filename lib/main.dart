import 'package:flutter/material.dart';
import 'package:flutter_module2_pgms_spectrum/Container/eg1.dart';

import 'Text/eg1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextSample(),
    );
  }
}
