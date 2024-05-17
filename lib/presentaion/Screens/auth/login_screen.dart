import 'package:chitchat/presentaion/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../main.dart';
import '../../utility/image_assets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: mq.height * .15,
          right: mq.width * .25,
          width: mq.width * .5,
          child: SvgPicture.asset(
            ImageAssets.chatlogoSVG,
            width: 120,
          ),
        ),
        Positioned(
            bottom: mq.height * .15,
            left: mq.width * .05,
            width: mq.width * .9,
            height: mq.height * .06,
            child: ElevatedButton.icon(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () {
                  Get.offAll(const HomeScreen());
                },
                icon: SvgPicture.asset(ImageAssets.googlebuttonSVG,
                    height: mq.height * .03),
                label: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(text: 'Login with '),
                        TextSpan(
                            text: 'Google',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ]),
                ))),
      ]),
    );
  }
}
