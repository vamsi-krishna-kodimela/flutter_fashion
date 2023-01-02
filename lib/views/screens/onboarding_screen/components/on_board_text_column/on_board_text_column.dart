import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_loop/views/screens/onboarding_screen/models/on_board_item_model.dart';
import 'package:style_loop/views/screens/onboarding_screen/providers/on_board_provider.dart';

import '../../../../../config/constants/colors.dart';

class OnBoardTextColumn extends StatelessWidget {
  const OnBoardTextColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onBoardProvider = Provider.of<OnBoardProvider>(context);
    final itemsList = onBoardProvider.onBoardItems;
    final currentIndex = onBoardProvider.screenIndex;
    return Column(
      children: itemsList
          .asMap()
          .entries
          .map(
            (item) => _OnBoardingText(
              item.value,
              item.key == currentIndex,
            ),
          )
          .toList(),
    );
  }
}

class _OnBoardingText extends StatelessWidget {
  const _OnBoardingText(this.item, this.isSelected, {super.key});

  final OnBoardItemModel item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 11.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            item.name,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: kSecondaryColor,
                  overflow: TextOverflow.ellipsis,
                  decoration: item.decoration,
                ),
          ),
          if (isSelected == true)
            Container(
              margin: const EdgeInsets.only(
                left: 10.0,
              ),
              width: 22.0,
              height: 2.0,
              color: kPrimaryColor2,
            ),
        ],
      ),
    );
  }
}
