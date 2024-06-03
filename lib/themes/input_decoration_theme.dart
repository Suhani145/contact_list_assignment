import 'package:contact_list/utils/colors.dart';
import 'package:flutter/material.dart';

class InputDecorationStyle{
  static InputDecorationTheme getInputDecorationTheme()
  {
    return InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: black),
        ),
      labelStyle: TextStyle(
        color: primaryColor,
        fontSize: 18
      ),
      hintStyle: TextStyle(
          color: primaryColor.withOpacity(0.5),
          fontSize: 15
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
      )
    );
  }
}