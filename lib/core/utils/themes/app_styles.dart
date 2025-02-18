import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static TextStyle textSmall = GoogleFonts.jost(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static TextStyle textMedium = GoogleFonts.jost(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle textLarge = GoogleFonts.jost(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle textBold = GoogleFonts.jost(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle textItalic = GoogleFonts.jost(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: Colors.black,
  );

  static TextStyle textLight = GoogleFonts.jost(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );

  static TextStyle textExtraBold = GoogleFonts.jost(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: Colors.black,
  );

  static TextStyle textUnderline = GoogleFonts.jost(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    decoration: TextDecoration.underline,
  );

  static TextStyle textWhite = GoogleFonts.jost(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}
