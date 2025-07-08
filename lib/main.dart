import 'package:flutter/material.dart';
import 'package:navigator_islemlerim/green_page.dart';
import 'package:navigator_islemlerim/hata_sayfasi.dart';
import 'package:navigator_islemlerim/red_page.dart';
import 'package:navigator_islemlerim/yellow_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => RedPage(),
        "/yellowPage": (context) => YellowPage(),
        "/greenPage": (context) => GreenPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => HataSayfasi(),
        );
      },
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // home: RedPage(),
    );
  }
}
