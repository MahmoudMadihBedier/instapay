import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:instapay/constanst/setting.dart';
import 'package:instapay/core/cubit/splash_screen/deuration_cubit.dart';

class Splashscreen extends StatefulWidget {
  static const String routenmae = splashScreen;

  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  late final DeurationCubit _deurationCubit;

  @override
  void initState() {
    super.initState();
    _deurationCubit = DeurationCubit(DeurationInitial());
    Future.delayed(Duration(seconds: _deurationCubit.state.deuration), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, verifyScreen);
    });
  }

  @override
  void dispose() {
    _deurationCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _deurationCubit,
      child: BlocBuilder<DeurationCubit, DeurationState>(
        builder: (context, state) {
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
