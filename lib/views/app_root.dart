import 'package:flutter/material.dart';
import 'package:style_loop/config/constants/colors.dart';
import 'package:style_loop/views/screens/onboarding_screen/onboarding_screen.dart';
import 'package:style_loop/views/screens/sign_in_screen/sign_in_screen.dart';

import 'screens/sign_up_screen/sign_up_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'VietnamPro',
            fontWeight: FontWeight.w600,
            fontSize: 40.0,
          ),
          headline2: TextStyle(
            fontFamily: 'VietnamPro',
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
          ),
          headline3: TextStyle(
            fontFamily: 'VietnamPro',
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
          ),
          headline4: TextStyle(
            fontFamily: 'VietnamPro',
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
          subtitle1: TextStyle(
            fontFamily: 'VietnamPro',
            fontSize: 20.0,
          ),
          subtitle2: TextStyle(
            fontFamily: 'VietnamPro',
            fontSize: 18.0,
          ),
          bodyText1: TextStyle(
            fontFamily: 'VietnamPro',
            fontSize: 16.0,
          ),
          bodyText2: TextStyle(
            fontFamily: 'VietnamPro',
            fontSize: 14.0,
          ),
          caption: TextStyle(
            fontFamily: 'VietnamPro',
            fontSize: 12.0,
          ),
          button: TextStyle(
            fontFamily: 'VietnamPro',
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        primaryColor: kLightColor2,
        scaffoldBackgroundColor: kLightColor2,
        backgroundColor: kLightColor2,
        fontFamily: "VietnamPro",
        appBarTheme: const AppBarTheme(
          backgroundColor: kLightColor2,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            fontFamily: 'VietnamPro',
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
            color: kPrimaryTextColor,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: kPrimaryTextColor,
          ),
        ),
      ),
      initialRoute: OnBoardingScreen.kRouteName,
      routes: {
        OnBoardingScreen.kRouteName: (_) => const OnBoardingScreen(),
        SignInScreen.kRouteName: (_) => const SignInScreen(),
        SignUpScreen.kRouteName: (_) => const SignUpScreen(),
      },
    );
  }
}
