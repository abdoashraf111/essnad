import 'package:essnad/screens/hello%20screen/hello_screen.dart';
import 'package:essnad/screens/signin_screen/sign_in_screen.dart';
import 'package:essnad/screens/signup_screen/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../reuseable_component/custom_textform.dart';
import '../../reuseable_component/cutom_button.dart';
import '../check_screen/check_screen.dart';

class SignUp extends StatefulWidget {
   SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
bool x=false;

var _service =SignupService();

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
                    " انشاء حساب",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  IconButton(
                      onPressed: () {
                        Get.to(HelloScreen());
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
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff1C7D6642)),
                      height: 50,
                      width: 100,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("العربية", style: TextStyle(fontSize: 20)),
                            Icon(Icons.sports_basketball)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextForm(
                      Labl: "اسم المستخدم", Iconss: Icons.person_outline_sharp),
                  Spacer(
                    flex: 1,
                  ),
                  CustomTextForm(
                      Labl: "كلمة المرور", Iconss: Icons.lock_outline_rounded),
                  Spacer(flex: 1),
                  CustomTextForm(
                      Labl: "البريد الالكتروني", Iconss: Icons.email_outlined),
                  Spacer(flex: 1),
                  CustomTextForm(
                      Labl: "رقم الهاتف", Iconss: Icons.phone_in_talk),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                          "الموافقه علي الشروط والاحكام",
                          style: TextStyle(color: Colors.green),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            print("pusssssh");
                            setState(() {
                              if(x==false){x=true;print("true");}
                              else{x=false;print("false");};
                            });

                          },
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              color: x ==false ?Colors.white :Color(0xff147868),
                              border: Border.all(color: Color(0xff147868)),
                              borderRadius: BorderRadius.circular(2)
                            ),
                          ),
                        )
                  ]),
                  Spacer(
                    flex: 3,
                  ),
                  Center(
                      child: CustomButton(
                          onPressed: () {Get.to(CheckScreen());},
                          text: "انشاء حساب",
                          ButtonColor: Color(0xff147868),
                          TextColor: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.to(SignIn());
                          },
                          child: Text(
                            "سجل الدخول",
                            style: TextStyle(color: Colors.green),
                          )),
                      Text("تملك حساب بالفعل ؟"),
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
