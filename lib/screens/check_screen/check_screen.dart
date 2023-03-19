import 'package:essnad/reuseable_component/custom_textform.dart';
import 'package:essnad/reuseable_component/cutom_button.dart';
import 'package:essnad/screens/hello%20screen/hello_screen.dart';
import 'package:essnad/screens/signup_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../reuseable_component/check_box.dart';
import '../main_page/main_page.dart';
import '../main_screen/Main_screen.dart';

class CheckScreen extends StatefulWidget {
   CheckScreen({Key? key}) : super(key: key);

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
final FormKey=GlobalKey<FormState>();

bool check=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "lib/images/3.png",
                ),
                fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  const Text(
                    "تسجيل دخول",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  IconButton(
                      onPressed: () {
                        Get.to(SignUp());
                      },
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        size: 30,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 10,
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 100,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 30,),
                  Center(child: Text("ادخل الرقم المرسل لهاتفك")),
                  SizedBox(height: 50,),
                  Form(
                    key: FormKey,
                    child: Row(
                      children: [
                        Spacer(flex: 1,),
                        CheckBox(),
                        Spacer(flex: 1,),
                        CheckBox(),
                        Spacer(flex: 1,),
                        CheckBox(),
                        Spacer(flex: 1,),
                        CheckBox(),
                        Spacer(flex: 1,),


                      ],
                    ),
                  ),
                  SizedBox(height: 100,),
                  Center(
                      child: CustomButton(
                          onPressed: () {
                            if(FormKey.currentState!.validate()){
                              Get.to(MainPage());
                              setState(() {
                                check=true;
                              });
                            }else{setState(() {
                              check=false;
                            });}
                          },
                          text: "التالي",
                          ButtonColor: check==false?Color(0xffDCE7E5):Color(0xff147868),
                          TextColor: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {

                          },
                          child: Text(
                            "اعاده ارسال الكود",
                            style: TextStyle(color: Colors.green),
                          )),
                      Text("لم تستلم كود ؟"),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
