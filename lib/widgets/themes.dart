import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          // iconTheme: IconThemeData(color: Colors.black),
          // titleTextStyle: Theme.of(context).appBarTheme;
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

      //Colors
      static Color creamColor = const Color(0xfff5f5f5);
      static Color darkBluishColor = const Color(0xff403b58);

}
