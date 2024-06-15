import 'package:app2/DetailsScreen.dart';
import 'package:flutter/material.dart';

class MainS extends StatelessWidget {
  const MainS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: CustomContainer('1', Colors.amber, context)),
              Expanded(child: CustomContainer('2', Colors.green, context)),
            ],
          ),
          CustomContainer('3', Colors.blue, context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: CustomContainer('4', Colors.red, context)),
            ],
          )
        ],
      )),
    );
  }

  Widget CustomContainer(txt, color, context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Detailsscreen(txt: txt, color: color)),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: 100,
        height: 100,
        color: color ?? Colors.red,
        child: Center(child: Text(txt)),
      ),
    );
  }
}
