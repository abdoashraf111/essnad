import 'package:essnad/screens/signin_screen/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../setting_screen/setting_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int page = 1;
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
              Icons.settings,
              size: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(SignIn());
              },
              icon: const Icon(
                Icons.arrow_forward_outlined,
                size: 30,
                color: Colors.white,
              )),
        ],
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF16796D), Color(0XFF6AB297)]),
          ),
        ),
        Positioned(
          top: 107,
          left: 39,
          right: 39,
          height: 167,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white.withOpacity(0.47),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff147868)),
                      borderRadius: BorderRadius.circular(50)),
                  child: CircleAvatar(
                    child: Image.asset(
                      "lib/images/profile.png",
                      fit: BoxFit.fill,
                    ),
                    radius: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("عبدالرحمن اشرف",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("موقع مستخدم",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 310,
          height: 30,
          right: 43,
          left: 43,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white),
            child: Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Icon(Icons.search, color: Colors.grey),
                Spacer(
                  flex: 6,
                ),
                Text("هل تبحث عن شي؟", style: TextStyle(color: Colors.grey)),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
        Positioned(
            height: 430,
            width: MediaQuery.of(context).size.width,
            bottom: 80,
            child: Container(
              color: Colors.white.withOpacity(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("المخلفات المضافه حديثا ",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            height: 97,
                            width: 250,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            height: 97,
                            width: 250,
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    "اهم الخدمات ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        height: 117,
                        width: 113,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      InkWell(
                        onTap: () {
                          // Get.to();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          height: 117,
                          width: 113,
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        height: 117,
                        width: 113,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ],
              ),
            )),
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
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  page = 0;
                                });
                              },
                              icon: Icon(Icons.person_outline_sharp)),
                          backgroundColor:
                              page == 0 ? Colors.grey : Colors.white),
                      Text("حسابي"),
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
                              setState(() {
                                page = 1;
                              });
                            },
                            icon: Icon(
                              Icons.home_outlined,
                            ),
                          ),
                          backgroundColor:
                              page == 1 ? Colors.grey : Colors.white),
                      Text("الرئيسية"),
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
                                setState(() {
                                  page = 2;
                                });
                              },
                              icon: Icon(
                                Icons.list_alt,
                              )),
                          backgroundColor:
                              page == 2 ? Colors.grey : Colors.white),
                      Text("الخدمات"),
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
