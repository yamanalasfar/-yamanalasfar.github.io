import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/maincontroller.dart';
import '../widget/Container.dart';
import '../widget/navBar.dart';

class HomePage extends GetResponsiveView<Home> {
  @override
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
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset('images/yaman.png')),
                    const SizedBox(
                      height: 39,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 23),
                      child: const Text(
                        'Hi,\nYaman here',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 28,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 23, top: 39),
                      child: const Text(
                        "Hi there, I am a Flutter developer with a passion for building intuitive\nand visually appealing cross-platform applications using the latest technologies\nand best practices.",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomeContainer('Resume', () async {
                              await launchUrl(Uri.parse(
                                  'https://drive.google.com/file/d/1E13zllvKTxQAeuXkBF9r5tFL_zoufy6A/view?usp=share_link'));
                            }),
                            CustomeContainer('Project', () {
                              Get.toNamed('/Projects');
                            }),
                          ]),
                    )
                  ],
                ),
              ),
              NavBar('images/house.png', 'images/heart.png', 'images/book.png'),
            ],
          ),
        ),
      ),
    );
  }
}
