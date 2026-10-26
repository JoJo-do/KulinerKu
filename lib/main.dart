
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const KulinerKuApp());
}

class KulinerKuApp extends StatelessWidget {
  const KulinerKuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KulinerKu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE8873D),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFAF3),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFFAF3),
          foregroundColor: Color(0xFF35271F),
          elevation: 0,
        ),
      ),
      home: const HomePage(),
    );
  }
}
