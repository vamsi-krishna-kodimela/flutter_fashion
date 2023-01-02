import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_loop/config/constants/colors.dart';
import 'package:style_loop/views/screens/onboarding_screen/providers/on_board_provider.dart';

import 'components/on_board_image/on_board_image.dart';
import 'components/on_board_progress_indicator/on_board_progress_indicator.dart';
import 'components/on_boarding_next_button/on_boarding_next_button.dart';
import 'components/on_board_text_column/on_board_text_column.dart';

class OnBoardingScreen extends StatefulWidget {
  static const kRouteName = "/app-on-boarding";

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (_) => OnBoardProvider(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 0.0,
            ),
            child: Column(
              children: [
                const Expanded(
                  child: OnBoardImage(),
                ),
                const OnBoardProgressIndicator(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 38.0,
                        ),
                        child: OnBoardTextColumn(),
                      ),
                    ),
                    Container(
                      color: kPrimaryColor2.withOpacity(0.4),
                      width: 1.0,
                      height: 176.0,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 38.0,
                        ),
                        width: 139.0,
                        child: const OnBoardingNextButton(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
