import 'package:flutter/material.dart';
import 'package:portfolio/widgets/buttons/primary_button.dart';
import 'package:portfolio/widgets/buttons/secondary_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    final isTablet = screenWidth > 768 && screenWidth <= 1024;
    
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : (isTablet ? 40 : 24),
        vertical: isDesktop ? 120 : 80,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Main heading
          Text(
            'Software Engineer',
            style: TextStyle(
              fontSize: isDesktop ? 72 : (isTablet ? 56 : 40),
              fontWeight: FontWeight.w300,
              color: const Color(0xFF202124),
              letterSpacing: -2.0,
              height: 1.1,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 24),
          
          // Subtitle
          Text(
            'Specializing in Mobile App Development & Blockchain Solutions',
            style: TextStyle(
              fontSize: isDesktop ? 24 : (isTablet ? 20 : 18),
              fontWeight: FontWeight.w400,
              color: const Color(0xFF5F6368),
              letterSpacing: 0.5,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 48),
          
          // Action buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryButton(
                text: 'View Projects',
                onPressed: () {
                  // TODO: Scroll to projects
                },
              ),
              
              const SizedBox(width: 16),
              
              SecondaryButton(
                text: 'Contact Me',
                onPressed: () {
                  // TODO: Scroll to contact
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
