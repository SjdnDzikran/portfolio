import 'package:flutter/material.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Coming soon',
          style: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.w300,
            color: const Color(0xFF202124),
            letterSpacing: -2.0,
          ),
        ),
      ),
    );
  }
}