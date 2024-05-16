import 'package:chitchat/presentaion/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChitChat extends StatelessWidget {
  const ChitChat({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              elevation: 04,
              iconTheme: IconThemeData(color: Colors.black87),
              backgroundColor: Colors.white)),
      title: 'ChitChat',
      home: const SplashScreen(),
    );
  }
}
