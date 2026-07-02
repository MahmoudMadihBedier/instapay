import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instapay/constanst/setting.dart';
import 'package:instapay/core/cubit/home/navigator_cubit.dart';
import 'package:instapay/features/home/view/home.dart';
import 'package:instapay/features/profile/view/profile_screen.dart';
import 'package:instapay/features/verification.dart';
import 'package:instapay/splashScreen.dart';

class AppRouters {
  Route? generatRoute(RouteSettings setting) {
    switch (setting.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NavigatorCubit(),
            child: Splashscreen(),
          ),
        );
      case verifyScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NavigatorCubit(),
            child: VerifyScreen(),
          ),
        );
      case homeSceen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NavigatorCubit(),
            child: HomeScreen(),
          ),
        );
      case profileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NavigatorCubit(),
            child: ProfileScreen(),
          ),
        );
    }
    return null;
  }
}
