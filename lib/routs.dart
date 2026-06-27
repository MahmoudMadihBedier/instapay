import 'package:flutter/material.dart';
import 'package:instapay/features/home/view/home.dart';
import 'package:instapay/features/verification.dart';
import 'package:instapay/splashScreen.dart';

Map <String ,WidgetBuilder> route ={
    Splashscreen.routenmae:(context)=>Splashscreen(),
    VerifyScreen.routename:(context)=>VerifyScreen(),
    HomeScreen.routName:(context) => HomeScreen(),

  
};