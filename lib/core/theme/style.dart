import 'package:flutter/material.dart';

class MyStyle {
  MyStyle._();

  static widgetStyle(String title) {
    return AppBar(
      title: Text(
        title,
      ),
      centerTitle: true,
    );
  }
}
