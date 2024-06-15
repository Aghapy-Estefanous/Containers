import 'package:app2/MainS.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'DetailsScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainS(),
    );
  }
}
