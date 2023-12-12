import 'package:flutter/material.dart';
class ColumnSampleOne extends StatelessWidget {
  const ColumnSampleOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.green[300],
        height: double.infinity,
        width: double.infinity,
        child: Column(
// mainAxisAlignment: MainAxisAlignment.start,// crossAxisAlignment: CrossAxisAlignment.start,
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
// //
//             mainAxisAlignment: MainAxisAlignment.end,
// //
//             crossAxisAlignment: CrossAxisAlignment.start,
// //
//             mainAxisAlignment: MainAxisAlignment.end,
// //
//             crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.end,
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// crossAxisAlignment: CrossAxisAlignment.center,
//
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
// //
//             crossAxisAlignment: CrossAxisAlignment.end,
// //
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //
//             crossAxisAlignment: CrossAxisAlignment.start,
// //
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //
//             crossAxisAlignment: CrossAxisAlignment.center,
// //
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //
//             crossAxisAlignment: CrossAxisAlignment.end,
// //
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //
//             crossAxisAlignment: CrossAxisAlignment.start,
// //
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Text("Container 1"),
                width: 150,
                height: 150,
                color: Colors.purple,
              ),
              Container(
                child: Text("Container 2"),
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
              Container(
                child: Text("Container 3"),
                width: 150,
                height: 150,
                color: Colors.red,
              )
            ]),
      ),
    );}
}