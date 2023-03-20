import 'package:dm1/utils/style_variables/color_palette.dart';
import 'package:flutter/material.dart';

class GAppBar {
  static AppBar basicBar = AppBar(
    backgroundColor: Colors.white,
    title: Image.network(
      'https://images.squarespace-cdn.com/content/v1/61bcc3b051f574349c2604a6/a684ff77-bc99-4055-81ad-0bff97c90d89/GEDISA-Logo-RGB.jpg?format=1500w',
      height: 35,
    ),
  );

  static AppBar reisehilfe = AppBar(
    backgroundColor: Colors.white,
    leading: const BackButton(
        color: Palette.secondaryColor,
    ),
    title: const Text(
      'REISEHILFE',
      style: TextStyle(color: Palette.secondaryColor, fontSize: 24),
    ),
  );

  static AppBar ratgeber(String title) => AppBar(
    backgroundColor: Colors.white,
    leading: const BackButton(
        color: Palette.secondaryColor,
    ),
    title: Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(color: Palette.secondaryColor, fontSize: 24),
    ),
  );
}
