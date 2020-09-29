import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  primaryColor: Color(0xFF2a2a2f),
  accentColor: Color(0xFF4e60ff),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: Color(0xFF2a2a2f)
  )
);

ThemeData lightTheme = ThemeData.light().copyWith(
  brightness: Brightness.light,
  primaryColor: Color(0xFFb590ca),
  accentColor: Color(0xFFa8d3da),
  highlightColor: Color(0xFFf5cab3),
  splashColor: Color(0xFFf3ecb8),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: Colors.white
  )
);
