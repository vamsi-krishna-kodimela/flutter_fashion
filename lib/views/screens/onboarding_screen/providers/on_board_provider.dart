import 'package:flutter/material.dart';
import 'package:style_loop/views/screens/sign_up_screen/sign_up_screen.dart';
import '../models/on_board_item_model.dart';

class OnBoardProvider with ChangeNotifier {
  final List<OnBoardItemModel> _onBoardItemList = [
    OnBoardItemModel.fromMap(
      {
        "name": "Shirt",
        "image": "assets/images/placeholders/onboarding_1.png",
        "tag_1": "Fancy",
        "tag_2": "Fashion",
        "isVisible": true,
      },
    ),
    OnBoardItemModel.fromMap(
      {
        "name": "T-Shirt",
        "image": "assets/images/placeholders/onboarding_2.png",
        "tag_1": "Unique",
        "tag_2": "Fashion",
        "isVisible": true,
      },
    ),
    OnBoardItemModel.fromMap(
      {
        "name": "Hoodies",
        "image": "assets/images/placeholders/onboarding_3.png",
        "tag_1": "Classy",
        "tag_2": "Fashion",
        "isVisible": true,
      },
    ),
    OnBoardItemModel.fromMap(
      {
        "name": "136+ Categories",
        "image": "assets/images/placeholders/onboarding_3.png",
        "decoration": TextDecoration.underline,
        "isVisible": false,
      },
    )
  ];
  int _screenIndex = 0;

  OnBoardProvider();

  List<OnBoardItemModel> get onBoardItems => [..._onBoardItemList];

  List<OnBoardItemModel> get visibleOnBoardItems =>
      _onBoardItemList.where((item) => item.isVisible).toList();

  int get screenIndex => _screenIndex;

  goToNextScreen(BuildContext ctx) {
    if (_screenIndex == visibleOnBoardItems.length - 1) {
      Navigator.of(ctx).pushReplacementNamed(SignUpScreen.kRouteName);
      return;
    }
    _screenIndex++;
    notifyListeners();
  }
}
