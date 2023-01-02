import 'dart:ui';

class OnBoardItemModel {
  final String name;
  final String image;
  final String tag_1;
  final String tag_2;
  final TextDecoration decoration;
  final bool isVisible;

  OnBoardItemModel(
    this.name,
    this.image,
    this.tag_1,
    this.tag_2,
    this.decoration,
    this.isVisible,
  );

  OnBoardItemModel.fromMap(data)
      : name = data["name"] ?? "",
        image = data["image"],
        tag_1 = data["tag_1"] ?? "",
        tag_2 = data["tag_2"] ?? "",
        decoration = data["decoration"] ?? TextDecoration.none,
        isVisible = data["isVisible"];
}
