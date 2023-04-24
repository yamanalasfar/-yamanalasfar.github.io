import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

Widget ID_Container(String img, String SocialMedia, int index) {
  return InkWell(
    onTap: () async {
      if (index == 0) {
        await _launchUniversalLinkIos(Uri.parse(
            'https://www.instagram.com/invites/contact/?i=1283aezzpqlai&utm_content=om824p'));
      } else if (index == 1) {
        await _launchUniversalLinkIos(
            Uri.parse('https://www.facebook.com/alasfar.yaman'));
      } else if (index == 2) {
        await _launchUniversalLinkIos(Uri.parse('https://t.me/Yaman7'));
      } else if (index == 3) {
        await _launchUniversalLinkIos(Uri.parse(
            'mailto:yaman.m.alasfar@gmail.com?subject=${Uri.encodeFull('')}&body=${Uri.encodeFull('')}'));
      } else if (index == 4) {
        await _launchUniversalLinkIos(
            Uri.parse('https://github.com/yamanalasfar'));
      } else {
        await _launchUniversalLinkIos(
            Uri.parse('https://wa.me/qr/2Z5PYIIT4V57J1'));
      }
    },
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Image.asset(img),
      SizedBox(
        height: 7.12,
      ),
      Text(
        SocialMedia,
        style: TextStyle(
            fontSize: 12,
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w300),
      )
    ]),
  );
}

Future<void> _launchUniversalLinkIos(Uri url) async {
  final bool nativeAppLaunchSucceeded = await launchUrl(
    url,
    mode: LaunchMode.externalNonBrowserApplication,
  );
  if (!nativeAppLaunchSucceeded) {
    await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    );
  }
}
