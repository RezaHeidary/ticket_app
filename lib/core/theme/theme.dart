import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final darkTheme = ThemeData(
    textTheme: GoogleFonts.vazirmatnTextTheme().apply(bodyColor: Colors.white),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.yellow,
      brightness: Brightness.dark,
      cardColor: Colors.black54,
    ),
    dividerColor: Colors.grey,
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.black45,
    ),
    iconTheme: IconThemeData(color: Colors.yellow[800]),
    cardColor: Colors.black54,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black87))),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 10, backgroundColor: Colors.yellow[800]),
    useMaterial3: true,
  );
  static final lightTheme = ThemeData(
    textTheme: GoogleFonts.vazirmatnTextTheme(),
    brightness: Brightness.light,
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.amber[800]),
    cardColor: Colors.amber[50],
    iconTheme: const IconThemeData(color: Colors.amber),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.amber,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 10, backgroundColor: Colors.orange),
    dividerColor: Colors.white,
    useMaterial3: true,
  );
}
