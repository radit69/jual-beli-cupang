import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const CupanginApp());
}

class CupanginApp extends StatelessWidget {
  const CupanginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupangin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D1B4C),
          primary: const Color(0xFF0D1B4C),
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF0D1B4C)),
          titleTextStyle: TextStyle(
            color: Color(0xFF0D1B4C),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
