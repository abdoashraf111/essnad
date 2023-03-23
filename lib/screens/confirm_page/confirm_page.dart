import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../reuseable_component/cutom_button.dart';
import '../profil_screen/profil_screen.dart';
import '../setting_screen/setting_screen.dart';
import '../signin_screen/sign_in_screen.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.to(SettingScreen());
            },
            icon: Icon(
              Icons.settings_outlined,
              size: 23,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(ProfilePage());
              },
              icon: const Icon(
                Icons.arrow_forward_outlined,
                size: 30,
                color: Colors.white,
              )),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF16796D), Color(0XFF6AB297)]),
            ),
          ),
          Positioned(
              top: 80,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "اضافه مخالفه",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              )),
          Positioned(
            top: 143,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(top: 35, right: 50, left: 50),
                child: Column(
                  children: [
                    Spacer(flex: 1,),
                    Image.asset("lib/images/confirm.png"),
                    SizedBox(height: 20,),
                    Text("تمت اضافه المخالفه بنجاح",style: TextStyle(
                      fontSize: 20
                    )),
                    Spacer(flex: 1,),
                    CustomButton(
                        onPressed: () {Get.to(ProfilePage());},
                        text: "العوده للصفحه الرئسية",
                        ButtonColor: Color(0xff147868),
                        TextColor: Colors.white),
                    Spacer(flex: 3,),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              height: 80,
              width: MediaQuery.of(context).size.width,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Color(0xffE7F1EF)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                              child: IconButton(
                                onPressed: () {
                                  Get.to(ProfilePage());
                                  // _controller.animateToPage(0,
                                  //     duration: Duration(milliseconds: 300),
                                  //     curve: Curves.linear);
                                },
                                icon: Image.asset("lib/images/1.1.png"),
                              ),
                              backgroundColor: Color(0xffE7F1EF)),
                          Text(
                            "حسابي",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                              child: IconButton(
                                onPressed: () {
                                  Get.to(ProfilePage());
                                  // _controller.animateToPage(1,
                                  //     duration: Duration(milliseconds: 300),
                                  //     curve: Curves.linear);
                                },
                                icon: Image.asset("lib/images/2.2.png"),
                              ),
                              backgroundColor: Color(0xffE7F1EF)),
                          Text(
                            "الرئيسية",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                              child: IconButton(
                                onPressed: () {
                                  Get.to(ProfilePage());
                                  // _controller.animateToPage(2,
                                  //     duration: Duration(milliseconds: 300),
                                  //     curve: Curves.linear);
                                },
                                icon: Image.asset("lib/images/3.3.png"),
                              ),
                              backgroundColor: Color(0xffE7F1EF)),
                          Text("الخدمات", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
