import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../hello screen/hello_screen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("lib/images/1.png"),fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 7,),
              Text('Esnad | إسناد',
                  style: TextStyle(
                      color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold)),
              Text("بلدية الشرائع",style: TextStyle(color: Colors.white,
              fontSize: 25),),
              Spacer(flex: 7,),
              Image.asset("lib/images/Group 100.png"),
              Spacer(flex: 1,)
            ],
          ),
        ),
      )


    );
  }
}
