import 'package:essnad/screens/profil_screen/profil_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../signin_screen/sign_in_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

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
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("الاعدادات",style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                  ),),
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
                padding: const EdgeInsets.only(top: 35,right: 50,left: 50),
                child: Column(
                  children: [
                    Text("اعدادات الحساب",style: TextStyle(
                        fontSize: 20
                    )),
                    SizedBox(height: 30),
                    Column(crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text("اللغة",style: TextStyle(
                            fontSize: 18
                        )),
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(height: 20,),
                        Text(" تحديث رقم الجوال",style: TextStyle(
                            fontSize: 18
                        )),
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(height: 20,),
                        Text("تغيير كلمه المرور",style: TextStyle(
                            fontSize: 18
                        )),
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                    Text("الدعم",style: TextStyle(
                        fontSize: 20
                    )),
                    SizedBox(height: 30),
                    Column(crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text("الدعم الفني",style: TextStyle(
                            fontSize: 18
                        )),
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(height: 20,),
                        Text(" اتصل بنا",style: TextStyle(
                            fontSize: 18
                        )),
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(height: 20,),
                        Text("اللوائح و الانظمة",style: TextStyle(
                            fontSize: 18
                        )),
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),

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
                    color: Colors.white),
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
                              backgroundColor:
                               Colors.white),
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
                              backgroundColor:
                              Colors.white),
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
                              backgroundColor:
                               Colors.white),
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
