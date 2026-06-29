import 'package:flutter/material.dart';
import 'package:instapay/constanst/setting.dart';
import 'package:instapay/features/home/view/home.dart';
import 'package:instapay/features/verification.dart';
import 'package:instapay/splashScreen.dart';

Map<String, WidgetBuilder> route = {
  splashScreen: (context) => Splashscreen(),
  verifyScreen: (context) => VerifyScreen(),
  homeSceen: (context) => HomeScreen(),
};
