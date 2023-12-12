import 'package:flutter/material.dart';
class TextSample extends StatelessWidget {
  const TextSample({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
            child: Text(
              "Learn Flutter",
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  wordSpacing: 20,
                  backgroundColor: Colors.yellow,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 5
                    )
                  ],
              ),
            )
        ),
      ),
    );}
}