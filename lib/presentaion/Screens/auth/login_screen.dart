import 'package:chitchat/presentaion/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utility/image_assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isAnimate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() => _isAnimate = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size; // Initialize mq here

    return Scaffold(
      body: Stack(children: [
        AnimatedPositioned(
          top: mq.height * .15,
          right: _isAnimate ? mq.width * .25 : -mq.width * .5,
          width: mq.width * .5,
          duration: const Duration(seconds: 2), // Correct the duration format
          child: SvgPicture.asset(
            ImageAssets.loginSVG,
            width: 120,
          ),
        ),
        Positioned(
          bottom: mq.height * .15,
          left: mq.width * .05,
          width: mq.width * .9,
          height: mq.height * .06,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()),
                  (route) => false);
            },
            icon: SvgPicture.asset(
              ImageAssets.googlebuttonSVG,
              height: mq.height * .03,
            ),
            label: RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(text: 'Login with '),
                  TextSpan(
                    text: 'Google',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
