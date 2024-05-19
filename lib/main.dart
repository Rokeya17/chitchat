import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';

late Size mq;
void main() {
  _initializeFirebase();
  runApp(const ChitChat());
}

_initializeFirebase() async {
  var DefaultFirebaseOptions;
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
