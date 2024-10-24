import 'package:flutter/material.dart';

abstract class PrimaryTheme {
  static ThemeData get theme => ThemeData(
        fontFamily: "Poppins",
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: "Poppins",
            fontSize: 18,
            color: ProjectColors.textColor,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white70,
          hintStyle: const TextStyle(
            color: Color(0xffDDDADA),
            fontWeight: FontWeight.normal,
            fontSize: 14
          ),
          contentPadding: const EdgeInsets.all(16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
        dividerColor: ProjectColors.secondaryTextColor,
      );
}

abstract class ProjectColors {
  static const Color textColor = Colors.black87;
  static const Color appBarIconContainer = Color(0xffF7F8FB);
  static const Color secondaryTextColor = Colors.black45;
}
