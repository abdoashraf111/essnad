import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
        required this.onPressed,
        required this.text,
        required this.ButtonColor,
        required this.TextColor
      })
      : super(key: key);
  void Function() onPressed;
  String text;
  Color ButtonColor;
  Color TextColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 280,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color:Color(0xff147868), ),
          borderRadius: BorderRadius.all( Radius.circular(10),),
          color: ButtonColor,
        ),
        child:Center(child: Text(text,style: TextStyle(fontSize: 18,color: TextColor),)) ,
      ),
    );
  }
}
