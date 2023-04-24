import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Home extends GetxController {
  List<String> aboutme = [
    'Hey there! My name is Yaman Alasfar and I am a Flutter developer.',
    'I have been working with Flutter for a while now and absolutely love it.',
    'Building beautiful and efficient apps with Flutter is my passion.',
    'I am always excited to learn new things and push my skills to the next level.',
    'In my free time, you can find me tinkering with Flutter code or browsing through the Flutter documentation.',
    'I believe in writing clean, maintainable, and scalable code.',
    'I am a team player and enjoy collaborating with others to create amazing projects.',
    'I am always open to feedback and love to share my knowledge with others.',
    'Flutter has given me the opportunity to build apps for multiple platforms using a single codebase, which is pretty awesome!'
  ];

  List<Map<String, String>> SocialMedia = [
    {'img': 'images/insta.png', 'Platform': 'INSTAGRAM'},
    {'img': 'images/facebook.png', 'Platform': 'FACEBOOK'},
    {'img': 'images/telegram.png', 'Platform': 'TELEGRAM'},
    {'img': 'images/email.png', 'Platform': 'EMAIL'},
    {'img': 'images/github.png', 'Platform': 'GITHUB'},
    {'img': 'images/whatsapp.png', 'Platform': 'WHATSAPP'},
  ];

  List<Map<String, String>> projects = [
    {'img': 'images/BexProduct.png', 'ProjectName': 'BexProduct'},
    {'img': 'images/EleganceStars.png', 'ProjectName': 'Elegance Stars'},
    {'img': 'images/pharmanager.png', 'ProjectName': 'Pharmanger'},
    {'img': 'images/WalletManager.png', 'ProjectName': 'Wallet Manager'},
    {'img': 'images/Shop.png', 'ProjectName': 'Clothes App'},
    {'img': 'images/Councilavior.png', 'ProjectName': 'Councilavior App'},
    {'img': 'images/shobeklobek.png', 'ProjectName': 'Shobek-lobek'},
  ];
}
