import 'package:flutter/material.dart';
class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
// height: 200,
// width: 200,
          constraints: const BoxConstraints(
              maxHeight: 200, maxWidth: 200, minHeight: 100, minWidth: 100),
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.6),
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://docs.flutter.dev/assets/images/dash/"
                          "dash-fainting.gif"),
                  fit: BoxFit.fill),
              color: Colors.pink,
              border: Border.all(
                  color: Colors.yellow, width: 5, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(5)),
          child: const Text("Hello World", textScaleFactor: 2),
        ),
      ),
    );
  }
}
//Alignment(x, y),
// alignment: const Alignment(0, 0),
// alignment: Alignment.bottomRight,
// Alignment(1.0, -1.0),
// alignment: FractionalOffset(0,0),
// alignment: AlignmentDirectional(-1,1),
// alignment: AlignmentDirectional(0,0),
// alignment: FractionalOffset.topLeft,
// alignment: AlignmentDirectional.center,
// margin: EdgeInsets.all(50),
// padding: EdgeInsets.all(20),
// margin: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
//margin: EdgeInsets.fromLTRB(20, 30, 40, 50),
//EdgeInsets.fromLTRB(this.left, this.top, this.right, this.bottom)
// margin: EdgeInsets.only(left: 70, bottom: 50),
//padding: EdgeInsets.only(left: 70, bottom: 50),