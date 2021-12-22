// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonColor: darkBluishColor,
        accentColor: darkBluishColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        buttonColor: lighBluishColor,
        accentColor: Colors.white,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      );

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
  static Color lighBluishColor = Vx.indigo500;
  static Color darkCreamColor = Vx.gray900;
}
