import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData light = ThemeData.light().copyWith(
  textTheme: GoogleFonts.interTextTheme(ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF90A4AE))).textTheme),

  colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF90A4AE)).copyWith(
    surface: Colors.white,
    onSurface: Colors.black,
    primary: Color(0xFF90A4AE),
    onPrimary: Colors.black,
    secondary: Colors.black,
    onSecondary: Color(0xFF90A4AE),
    error: Color(0xFFD50000),
    onError: Colors.white
  ),
);

ThemeData dark = ThemeData.dark().copyWith(
  textTheme: GoogleFonts.interTextTheme(ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF90A4AE))).textTheme),

  colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF90A4AE)).copyWith(
    surface: Colors.black,
    onSurface: Colors.white,
    primary: Colors.black,
    onPrimary: Color(0xFF90A4AE),
    secondary: Color(0xFF90A4AE),
    onSecondary: Colors.black,
    error: Color(0xFFD50000),
    onError: Colors.white,
  ),
);
