import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Design {
  static final textTheme = CupertinoTextThemeData(
    textStyle: GoogleFonts.manrope(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF000000),
    ),
    navTitleTextStyle: GoogleFonts.manrope(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF000000),
    ),
    actionTextStyle: GoogleFonts.manrope(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF4631D2),
    ),
    tabLabelTextStyle: GoogleFonts.manrope(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF4631D2),
    ),
  );

  static final themeData = CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF4631D2),
    primaryContrastingColor: const Color(0xFFFEFEFE),
    textTheme: textTheme,
    barBackgroundColor: const Color(0xFFFEFEFE),
    scaffoldBackgroundColor: const Color(0xFFF3F4F6),
    applyThemeToAll: true,
  );

  static const subTextColor = Color(0xFF929292);
  static const errorColor = Color(0xFFEC3A4D);
}
