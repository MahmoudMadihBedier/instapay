import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:instapay/features/verification.dart';

class Splashscreen extends StatefulWidget {
  static String routenmae = "SpalshScreen";
  Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
@override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 1),() =>Navigator.popAndPushNamed(context, VerifyScreen.routename));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child: Center(child: Image.asset("assets/logo/logo.png"))),
          Column(
            children: [
              Image.asset("assets/logo/logo2.png"),
              SpinKitThreeBounce(
                itemBuilder: (context, index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.blue : Colors.grey,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
