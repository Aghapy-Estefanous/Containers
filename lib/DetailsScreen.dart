import 'package:flutter/material.dart';

class Detailsscreen extends StatelessWidget {
  final String txt;
  final Color? color;
  const Detailsscreen({super.key, required this.txt, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          width: 100,
          height: 100,
          color: color,
          child: Center(child: Text(txt)),
        ),
      ),
    );
  }
}
