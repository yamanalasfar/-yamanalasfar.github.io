import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/maincontroller.dart';
import '../widget/ProjectCard.dart';

class Projects extends GetResponsiveView<Home> {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 21.89,
                    color: Color(0xffFFFFFF),
                  )),
              // SizedBox(
              //   height: 50,
              // ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ProjectCard(controller.projects[index]['img']!,
                        controller.projects[index]['ProjectName']!);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: controller.projects.length)
            ],
          ),
        ),
      ),
    ));
  }
}
