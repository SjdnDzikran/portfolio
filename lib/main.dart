import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'constants/brand_theme.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dzikran Azka Sajidan - Mobile App Developer',
      debugShowCheckedModeBanner: false,
      theme: BrandTheme.theme,
      home: const HomePage(),
    );
  }
}
