import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
   CheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: TextFormField(
          validator: (value){
            if(value!=null){
              return null;
            }else{return "الرقم المدخل غير صحيح";}
          },
          keyboardType: TextInputType.number,
          maxLines: 1,
          style: TextStyle(fontSize: 30,),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
