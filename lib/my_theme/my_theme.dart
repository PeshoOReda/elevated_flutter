import 'package:flutter/material.dart';

import '../utils/manager_colors.dart';
import 'my_text.dart';

class MyTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: ManagerColors.blue,
        hintColor: ManagerColors.yellow,
        scaffoldBackgroundColor: ManagerColors.white,
        appBarTheme: AppBarTheme(
            color: ManagerColors.blue, titleTextStyle: TextStyles.appBarTitle),
        textTheme: TextTheme(
            bodyLarge: TextStyles.bodyText,
            bodyMedium: TextStyles.bodyText,
            titleLarge: TextStyles.headline),
        cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: ManagerColors.grey, width: 2),
                borderRadius: BorderRadius.circular(8))));
  }
}
