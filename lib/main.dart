import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yamanportfolio/view/screen/Aboutme.dart';

import 'package:yamanportfolio/view/screen/Projects.dart';
import 'package:yamanportfolio/view/screen/contactme.dart';

import 'binding/rootbinding.dart';
import 'view/screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      initialBinding: rootbinding(),
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/AboutMe',
          page: () => AboutMe(),
        ),
        GetPage(
          name: '/ContactMe',
          page: () => ContactMe(),
        ),
        GetPage(
          name: '/Projects',
          page: () => Projects(),
        ),
      ],
    );
  }
}
