import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static Color primaryColor = const Color(0xffFFBB3B);
  static Color darkGrey = const Color(0xff343534);
  static Color lightGrey = const Color(0xff514F4F);
  static Color darkBlack = const Color(0xff121312);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBlack,
    appBarTheme:  AppBarTheme(
      backgroundColor: darkGrey,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight:FontWeight.w400,

      ),
    ),
    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      backgroundColor: darkGrey,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.white.withOpacity(.74),
      type: BottomNavigationBarType.fixed,
      elevation: 10
    ),
    textTheme: TextTheme(
      titleLarge:GoogleFonts.inter(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: GoogleFonts.inter(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.inter(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.inter(
        color: const Color(0xffB5B4B4),
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
