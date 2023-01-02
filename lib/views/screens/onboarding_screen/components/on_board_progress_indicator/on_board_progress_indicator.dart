import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_loop/views/screens/onboarding_screen/providers/on_board_provider.dart';

import '../../../../../config/constants/colors.dart';

class OnBoardProgressIndicator extends StatelessWidget {
  const OnBoardProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onBoardProvider = Provider.of<OnBoardProvider>(context);
    final visibleItems = onBoardProvider.visibleOnBoardItems;
    final currentIndex = onBoardProvider.screenIndex;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: visibleItems
          .asMap()
          .entries
          .map<Widget>(
            (item) => Container(
              width: 6.0,
              height: 6.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  6.0,
                ),
                color: item.key == currentIndex
                    ? kPrimaryColor
                    : kPrimaryColor.withOpacity(0.3),
              ),
            ),
          )
          .toList(),
    );
  }
}
