import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yamanportfolio/view/widget/Container.dart';
import 'package:yamanportfolio/view/widget/navBar.dart';

import '../../controller/maincontroller.dart';

class AboutMe extends GetResponsiveView<Home> {
  Widget builder() {
    alwaysUseBuilder == false;
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/image 1.png'), fit: BoxFit.fill)),
            child: SafeArea(
                child: Stack(children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(child: Image.asset('images/yaman1.png')),
                    SizedBox(
                      height: 48,
                    ),
                    CustomeContainer('ABOUT ME', () {}),
                    Container(
                      margin: EdgeInsets.only(
                          left: 29, right: 28, top: 30, bottom: 100),
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Text(
                              controller.aboutme[index],
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 10,
                            );
                          },
                          itemCount: controller.aboutme.length),
                    )
                  ],
                ),
              ),
              NavBar(
                  'images/house1.png', 'images/heart1.png', 'images/book.png')
            ]))));
  }
}
