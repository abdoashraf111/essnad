import 'package:flutter/material.dart';

class CardTrack extends StatelessWidget {
  const CardTrack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,
      width: 344,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                Container(height: 32,width: 96,decoration: BoxDecoration(
                  color: Color(0xff147868),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(children: [
                  Spacer(flex: 1,),
                  Text("تعديل",style: TextStyle(
                    color: Colors.white
                  )),
                  Spacer(flex: 1,),
                  Image.asset("lib/images/pen.png"), Spacer(flex: 1,),]),
                ),
                SizedBox(height: 20,),
                Text("المزيد من التفاصيل",style: TextStyle(
                  fontSize: 10
                )),
              ],
            ),
            Spacer(flex: 1,),
            Column(
              children: [
                Text("التشوه البصري",style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                )),
                Text("الكتابه علي الجدران",style: TextStyle(
                  fontSize: 13
                )),
                Row(
                  children: [
                    Text("مكه المكرمة"),
                    Icon(Icons.location_on_outlined),
                  ],
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
