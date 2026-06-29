import 'package:flutter/material.dart';
import 'package:instapay/app_routers.dart';
import 'package:instapay/constanst/setting.dart';

void main() {
  runApp(MyApp(appRouters: AppRouters()));
}

class MyApp extends StatelessWidget {
  final AppRouters appRouters;
  const MyApp({super.key, required this.appRouters});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //try another way of the navigate that dily with bloc and provide it from the widget tree
      initialRoute: splashScreen,
      //routes:route,
      onGenerateRoute: appRouters.generatRoute,
    );
  }
}
