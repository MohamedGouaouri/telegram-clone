import 'package:flutter/material.dart';
import 'package:telegrame_clone/src/app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // set theme mode to system
    themeMode: ThemeMode.system,
    darkTheme: ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade800,
      colorScheme: ColorScheme.dark(),
    ),
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xff5e8bb5),
      ),
    ),
    home: TelegrameApp(),
  ));
}
