import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_loop/views/screens/onboarding_screen/providers/on_board_provider.dart';

import '../../../../../config/constants/colors.dart';

class OnBoardImage extends StatelessWidget {
  const OnBoardImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onBoardProvider = Provider.of<OnBoardProvider>(context);
    final visibleItems = onBoardProvider.visibleOnBoardItems;
    final currentIndex = onBoardProvider.screenIndex;
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            visibleItems[currentIndex].image,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 42.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                visibleItems[currentIndex].tag_1,
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: kPrimaryTextColor,
                      fontSize: 45.0,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    visibleItems[currentIndex].tag_2,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: kPrimaryTextColor,
                          fontSize: 48.0,
                        ),
                  ),
                  const SizedBox(
                    width: 11.5,
                  ),
                  Image.asset(
                    "assets/images/decorators/onboarding_asset_1.png",
                    width: 26.5,
                    height: 27.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
