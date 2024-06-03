import 'package:contact_list/utils/colors.dart';
import 'package:flutter/material.dart';

class AppBarStyle{
  static AppBarTheme getAppBarStyle()
  {
    return AppBarTheme(
      backgroundColor:primaryColor,
      foregroundColor: white,
      centerTitle: true,
      elevation: 8,
      shadowColor: tileColor,
    );
  }
}