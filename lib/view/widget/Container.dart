import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget CustomeContainer(String title, Function function) {
  return InkWell(
    onTap: () {
      function();
    },
    child: Container(
      decoration: BoxDecoration(
          color: const Color(0xff000000).withOpacity(0.33),
          borderRadius: BorderRadius.circular(50)),
      height: 43,
      width: 147,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
      ),
    ),
  );
}
