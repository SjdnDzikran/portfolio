import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    final isTablet = screenWidth > 768 && screenWidth <= 1024;
    
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : (isTablet ? 40 : 24),
        vertical: isDesktop ? 100 : 60,
      ),
      color: const Color(0xFFF8F9FA),
      child: Column(
        children: [
          // Section title
          Text(
            'About Me',
            style: TextStyle(
              fontSize: isDesktop ? 48 : (isTablet ? 40 : 32),
              fontWeight: FontWeight.w300,
              color: const Color(0xFF202124),
              letterSpacing: -1.0,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 48),
          
          // Content
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Text(
              'I am a passionate software engineer with expertise in mobile app development and blockchain technology. '
              'I love creating innovative solutions that bridge the gap between cutting-edge technology and real-world applications.\n\n'
              'My journey in software development has led me to specialize in Flutter for cross-platform mobile development '
              'and blockchain technologies for decentralized applications. I believe in writing clean, efficient code '
              'and staying up-to-date with the latest industry trends and best practices.\n\n'
              'When I\'m not coding, you can find me exploring new technologies, contributing to open-source projects, '
              'or sharing knowledge with the developer community.',
              style: TextStyle(
                fontSize: isDesktop ? 18 : 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF5F6368),
                height: 1.6,
                letterSpacing: 0.1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
