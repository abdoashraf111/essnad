import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/2.png"),
              ),
            ),
            child: Text(""),
          ),
        ),
        Container(
          child: Text(""),
          color: Colors.black,
        )
      ]),
    );
  }
}
