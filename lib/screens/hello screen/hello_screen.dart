import 'package:essnad/reuseable_component/cutom_button.dart';
import 'package:essnad/screens/signin_screen/sign_in_screen.dart';
import 'package:essnad/screens/signup_screen/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/images/2.png"), fit: BoxFit.fill,),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "مرحبا بك",
                    style: TextStyle(
                        fontSize: 70,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    TextColor: Colors.white,
                      ButtonColor:Color(0xff147868) ,
                      text: "تسجيل دخول", onPressed: () {Get.to(SignIn());}),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "المتابعة كضيف",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Spacer(flex: 1,),
                      Container(
                        width:MediaQuery.of(context).size.width/2.6 ,
                        height: 1,color: Colors.grey,),
                      Spacer(flex: 1,),
                      Text("او",style: TextStyle(color: Colors.grey,fontSize: 20)),
                      Spacer(flex: 1,),
                      Container(
                        width:MediaQuery.of(context).size.width/2.6 ,
                        height: 1,color: Colors.grey,),
                      Spacer(flex: 1,),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    TextColor: Color(0xff147868),
                      ButtonColor: Colors.white,
                      onPressed: (){Get.to(SignUp());},
                      text: "انشاء حساب جديد")
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
