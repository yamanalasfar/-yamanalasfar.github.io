import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/maincontroller.dart';
import '../widget/Container.dart';
import '../widget/ID_Container.dart';
import '../widget/navBar.dart';

class ContactMe extends GetResponsiveView<Home> {
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
                    children: [
                      Center(child: Image.asset('images/yaman1.png')),
                      SizedBox(
                        height: 48,
                      ),
                      CustomeContainer('CONTACT', () {}),
                      SizedBox(
                        height: 93,
                      ),
                      Text(
                        'Get In Touch With Me',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF)),
                      ),
                      SizedBox(
                        height: 73,
                      ),
                      Container(
                        child: GridView.builder(
                          itemCount: controller.SocialMedia.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 100, crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return ID_Container(
                                controller.SocialMedia[index]['img']!,
                                controller.SocialMedia[index]['Platform']!,
                                index);
                          },
                        ),
                      )
                    ],
                  ),
                ),
                NavBar(
                    'images/house1.png', 'images/heart.png', 'images/book1.png')
              ],
            ))));
  }
}
