import 'package:carousel_slider/carousel_slider.dart';
import 'package:essnad/screens/profil_screen/serviec.dart';
import 'package:essnad/screens/signin_screen/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../reuseable_component/cutom_button.dart';
import '../check_screen/check_screen.dart';
import '../setting_screen/setting_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _MainPageState();
}

class _MainPageState extends State<ProfilePage> {
  int page = 1;
  final _controller = PageController(initialPage: 1);

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
                Get.to(SignIn());
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
          PageView(
            onPageChanged: (value) {
              setState(() {
                page = value;
              });
            },
            controller: _controller,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Stack(children: [
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
                                style:
                                TextStyle(color: Colors.white, fontSize: 20)),
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
                        Text("هل تبحث عن شي؟",
                            style: TextStyle(color: Colors.grey)),
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
                          Text("الخدمات ",
                              style: TextStyle(fontSize: 20, color: Colors.white)),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: CarouselSlider.builder(
                              options: CarouselOptions(),
                              itemCount: 5,
                                itemBuilder: (context, index, realIndex) {
                               return cards[index];
                                },

                            ),
                          )

                        ],
                      ),
                    )),
              ]),
              Stack(children: [
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
                                style:
                                TextStyle(color: Colors.white, fontSize: 20)),
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
                        Text("هل تبحث عن شي؟",
                            style: TextStyle(color: Colors.grey)),
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
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    height: 97,
                                    width: 250,
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "التشوه البصري",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF938B8B)),
                                          ),
                                          Text(
                                            " الكتابه علي الجدران    ",
                                            style: TextStyle(
                                                fontSize: 13, color: Colors.black),
                                          ),
                                          Row(
                                            children: [
                                              Text("مكه المكرمه"),
                                              Icon(Icons.location_on_outlined,
                                                  size: 18),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "المزيد من التفاصيل",
                                                style: TextStyle(
                                                  fontSize: 6,
                                                  color: Color(0XFF338361),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
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
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "التشوه البصري",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF938B8B)),
                                          ),
                                          Text(
                                            " الكتابه علي الجدران    ",
                                            style: TextStyle(
                                                fontSize: 13, color: Colors.black),
                                          ),
                                          Row(
                                            children: [
                                              Text("مكه المكرمه"),
                                              Icon(Icons.location_on_outlined,
                                                  size: 18),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "المزيد من التفاصيل",
                                                style: TextStyle(
                                                  fontSize: 6,
                                                  color: Color(0XFF338361),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
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
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  height: 117,
                                  width: 113,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 22,
                                        width: 113,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20)),
                                            color: Color(0XFF62A362)),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Image.asset("lib/images/dd 2.png"),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        "متابعه المخالفات",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  height: 117,
                                  width: 113,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 22,
                                        width: 113,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20)),
                                            color: Color(0XFF62A362)),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset("lib/images/2.0.png"),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        "رصيد المخالفات",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  height: 117,
                                  width: 113,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 22,
                                        width: 113,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20)),
                                            color: Color(0XFF62A362)),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Image.asset("lib/images/3.0.png"),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        "اضافه المخالفات",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),

              ]),
              Stack(children: [
                Positioned(
                    top: 80,
                    left: (MediaQuery.of(context).size.width/2)-25,
                    child: Text("حسابي",style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),)),
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
                      padding: const EdgeInsets.all(25.0),

                    ),
                  ),
                ),
              ]),
            ],
          ),
          //navigator button
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
                                  _controller.animateToPage(0,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.linear);
                                },
                                icon: Image.asset("lib/images/1.1.png"),
                              ),
                              backgroundColor:
                              page == 0 ? Colors.grey : Colors.white),
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
                                  _controller.animateToPage(1,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.linear);
                                },
                                icon: Image.asset("lib/images/2.2.png"),
                              ),
                              backgroundColor:
                              page == 1 ? Colors.grey : Colors.white),
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
                                  _controller.animateToPage(2,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.linear);
                                },
                                icon: Image.asset("lib/images/3.3.png"),
                              ),
                              backgroundColor:
                              page == 2 ? Colors.grey : Colors.white),
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
