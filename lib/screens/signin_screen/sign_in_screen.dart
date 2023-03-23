import 'package:essnad/reuseable_component/custom_textform.dart';
import 'package:essnad/reuseable_component/cutom_button.dart';
import 'package:essnad/screens/hello%20screen/hello_screen.dart';
import 'package:essnad/screens/profil_screen/profil_screen.dart';
import 'package:essnad/screens/signup_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
                  Row(children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "نسيت كلمه المرور؟",
                          style: TextStyle(color: Colors.green),
                        ))
                  ]),
                  Spacer(
                    flex: 3,
                  ),
                  Center(
                      child: CustomButton(
                          onPressed: () {Get.to(ProfilePage());},
                          text: "دخول",
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
                            Get.to(SignUp());
                          },
                          child: Text(
                            "سجل الان",
                            style: TextStyle(color: Colors.green),
                          )),
                      Text("ليس لديك حساب ؟"),
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
