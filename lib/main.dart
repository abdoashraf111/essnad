import 'dart:async';



import 'package:essnad/screens/hello%20screen/hello_screen.dart';
import 'package:essnad/screens/splash_screen/splash%20screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
  Timer(Duration(seconds: 5), () {Get.to(HelloScreen());});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      home: Splash(),
    );

  }
}
