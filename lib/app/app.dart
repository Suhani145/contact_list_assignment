import 'package:contact_list/themes/app_bar_theme.dart';
import 'package:contact_list/themes/elevated_button_theme.dart';
import 'package:contact_list/themes/input_decoration_theme.dart';
import 'package:contact_list/views/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ContactListApp extends StatelessWidget
{
  const ContactListApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact List',
      home: const HomeScreen(),
      theme: ThemeData(
        appBarTheme: AppBarStyle.getAppBarStyle(),
        inputDecorationTheme: InputDecorationStyle.getInputDecorationTheme(),
        elevatedButtonTheme: ElevatedButtonStyle.getElevatedButtonStyle(),
      )
    );
  }

}