import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:instapay/core/cubit/splash_screen/deuration_cubit.dart';
import 'package:instapay/features/verification.dart';

class Splashscreen extends StatelessWidget {
  static String routenmae = "SpalshScreen";
  Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeurationCubit(DeurationInitial()),
      child: BlocBuilder<DeurationCubit, DeurationState>(
        builder: (context, state) {
          Future.delayed(Duration(seconds: state.deuration),() => Navigator.popAndPushNamed(context, VerifyScreen.routename),);
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Expanded(
                  child: Center(child: Image.asset("assets/logo/logo.png")),
                ),
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
        },
      ),
    );
  }
}
