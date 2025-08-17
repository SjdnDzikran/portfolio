import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';
import 'package:portfolio/pages/home_page.dart';

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
