import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget NavBar(String house, String heart, String book) {
  return Positioned(
    width: Get.width * 1,
    height: 100,
    bottom: 0,
    child: Container(
      decoration: BoxDecoration(
          color: Color(0xff000000).withOpacity(0.33),
          borderRadius: BorderRadius.circular(50)),
      width: Get.width * 1,
      margin: EdgeInsets.only(left: 35, right: 35, bottom: 33),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(
            onTap: () {
              Get.toNamed('/AboutMe');
            },
            child: Image.asset(heart)),
        InkWell(
            onTap: () {
              Get.toNamed('/home');
            },
            child: Image.asset(house)),
        InkWell(
            onTap: () {
              Get.toNamed('/ContactMe');
            },
            child: Image.asset(book)),
      ]),
    ),
  );
}
