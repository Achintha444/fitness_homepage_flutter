import 'package:flutter/material.dart';

abstract class PrimaryTheme {
  static ThemeData get theme => ThemeData(
    fontFamily: "Poppins",
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: "Poppins",
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: ProjectColors.textColor,
      ),
    )
  );
}

abstract class ProjectColors {
  static const Color textColor = Colors.black87;
  static const Color appBarIconContainer = Color(0xffF7F8FB);
}