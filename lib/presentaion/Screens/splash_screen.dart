import 'package:chitchat/presentaion/Screens/home_screen.dart';
import 'package:chitchat/presentaion/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goTonextScreen();
  }

  void goTonextScreen() {
    Future.delayed(const Duration(seconds: 03), () {
      Get.put(const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ImageAssets.chitchatlogoSVG,
            width: 120,
          ),
        ],
      ),
    );
  }
}
