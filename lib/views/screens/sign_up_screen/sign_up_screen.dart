import 'package:flutter/material.dart';
import 'package:style_loop/config/constants/colors.dart';
import 'package:style_loop/views/screens/sign_in_screen/sign_in_screen.dart';

import '../../../config/constants/images.dart';

class SignUpScreen extends StatelessWidget {
  static const kRouteName = "/sign-up";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SIGN UP",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 40.0,
                    ),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let’s Create an Account",
                          style: textTheme.headline2?.copyWith(
                            color: kPrimaryTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          child: Text(
                            "Create a new account for more explore ",
                            style: textTheme.caption?.copyWith(
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        style: textTheme.bodyText2?.copyWith(
                          color: kPrimaryTextColor,
                        ),
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          hintStyle: textTheme.bodyText2?.copyWith(
                            color: kSecondaryColor,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            gapPadding: 17.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            gapPadding: 17.0,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            gapPadding: 17.0,
                          ),
                          fillColor: kSecondaryColor2,
                          filled: true,
                        ),
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        style: textTheme.bodyText2?.copyWith(
                          color: kPrimaryTextColor,
                        ),
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: textTheme.bodyText2?.copyWith(
                            color: kSecondaryColor,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            gapPadding: 17.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            gapPadding: 17.0,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            gapPadding: 17.0,
                          ),
                          fillColor: kSecondaryColor2,
                          filled: true,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        style: textTheme.bodyText2?.copyWith(
                          color: kPrimaryTextColor,
                        ),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: textTheme.bodyText2?.copyWith(
                            color: kSecondaryColor,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            gapPadding: 17.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            gapPadding: 17.0,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            gapPadding: 17.0,
                          ),
                          fillColor: kSecondaryColor2,
                          filled: true,
                          suffix: Image.asset(
                            kEyeIcon,
                            height: 24.0,
                            width: 24.0,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        cursorColor: kPrimaryColor,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: kPrimaryColor,
                          textStyle: textTheme.button?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                          padding: const EdgeInsets.all(15.0),
                        ),
                        child: const Text("Forgot Password?"),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                    ),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(17.0),
                        backgroundColor: kPrimaryColor,
                        foregroundColor: kLightColor2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        textStyle: textTheme.button,
                      ),
                      child: const Text(
                        "SIGN UP",
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "OR",
                          style: textTheme.caption?.copyWith(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: SizedBox(
                        width: 22.0,
                        height: 22.0,
                        child: Image.asset(kGoogleIcon),
                      ),
                      label: const Text("SIGN IN WITH GOOGLE"),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(13.0),
                        backgroundColor: kLightColor2,
                        foregroundColor: kPrimaryTextColor,
                        textStyle: textTheme.caption,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style: textTheme.bodyText2?.copyWith(
                  color: kSecondaryColor,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SignInScreen.kRouteName);
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 32.0,
                  ),
                ),
                child: Text(
                  "Sign In",
                  style: textTheme.bodyText2?.copyWith(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
