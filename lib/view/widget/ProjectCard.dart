import 'package:flutter/material.dart';

Widget ProjectCard(String img, String title) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(left: 10, right: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        color: const Color(0xff000000).withOpacity(0.33),
        borderRadius: BorderRadius.circular(15)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7.5),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ],
    ),
  );
}
