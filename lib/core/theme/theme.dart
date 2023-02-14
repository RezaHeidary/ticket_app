import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final darkTheme = ThemeData(
    textTheme: GoogleFonts.vazirmatnTextTheme().apply(bodyColor: Colors.white),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.amber,
      brightness: Brightness.dark,
      cardColor: Colors.black54,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.black45,
    ),
    iconTheme: const IconThemeData(color: Colors.purple),
    cardColor: Colors.black54,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.red[800]))),
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
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(elevation: 10),
    useMaterial3: true,
  );
}
