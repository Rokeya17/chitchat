import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../main.dart';
import '../../utility/image_assets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: mq.height * .15,
          right: mq.width * .25,
          width: mq.width * .5,
          child: SvgPicture.asset(
            ImageAssets.chitchatlogoSVG,
            width: 120,
          ),
        ),
        Positioned(
            bottom: mq.height * .15,
            width: mq.width * .5,
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset(
                  ImageAssets.chitchatlogoSVG,
                  width: 120,
                ),
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
