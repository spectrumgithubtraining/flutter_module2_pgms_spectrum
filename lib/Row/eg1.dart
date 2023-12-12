import 'package:flutter/material.dart';

class RowSample extends StatelessWidget {
  const RowSample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.green[300],
        height: double.infinity,
        width: double.infinity,
        child: Row(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.end,
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.end,
//
//           mainAxisAlignment: MainAxisAlignment.end,
// //
//           crossAxisAlignment: CrossAxisAlignment.start,//
//           mainAxisAlignment: MainAxisAlignment.end,
// //
//           crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.end,
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// crossAxisAlignment: CrossAxisAlignment.center,
//
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
// //
//           crossAxisAlignment: CrossAxisAlignment.end,
// //
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //
//           crossAxisAlignment: CrossAxisAlignment.start,
// //
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //
//           crossAxisAlignment: CrossAxisAlignment.center,
// //
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //
//           crossAxisAlignment: CrossAxisAlignment.end,
// //
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //
//           crossAxisAlignment: CrossAxisAlignment.start,
// //
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(width: 50, height: 50, color: Colors.purple),
            Container(width: 50, height: 50, color: Colors.red),
            Container(width: 50, height: 50, color: Colors.yellow)
          ],
        ),
      ),
    );
  }
}
