import 'package:contact_list/utils/colors.dart';
import 'package:flutter/material.dart';

class ElevatedButtonStyle{
  static ElevatedButtonThemeData getElevatedButtonStyle()
  {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shadowColor: tileColor,
          elevation: 8,
          backgroundColor: primaryColor,
          foregroundColor: white,
          fixedSize: const Size.fromWidth(double.maxFinite),
          textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          )
      ),
    );
  }
}