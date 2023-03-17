import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
   CustomTextForm({Key? key,required this.Labl,required this.Iconss}) : super(key: key);
   String Labl;
   IconData Iconss;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-50,
      height: 100,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(Labl),
              Icon(Iconss)
            ],
          ),
          TextFormField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(

              border: OutlineInputBorder(),
            ),

            ),


        ],
      ),
    );
  }
}
