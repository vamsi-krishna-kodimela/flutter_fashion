import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_loop/views/screens/onboarding_screen/providers/on_board_provider.dart';

import '../../../../../config/constants/colors.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => goToNextScreen(context),
      icon: const Icon(Icons.arrow_forward),
      label: const Text("NEXT"),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 33.0,
          vertical: 12.0,
        ),
        backgroundColor: kPrimaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(
              12.0,
            ),
          ),
        ),
        foregroundColor: kLightColor2,
        textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }

  goToNextScreen(BuildContext ctx) {
    final onBoardProvider = Provider.of<OnBoardProvider>(ctx, listen: false);
    onBoardProvider.goToNextScreen(ctx);
  }
}
