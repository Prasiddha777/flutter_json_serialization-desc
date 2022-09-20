import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
        // backgroundColor: Colors.white,
        // primaryColor: Colors.indigo,
        primarySwatch: Colors.indigo,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      );
}
