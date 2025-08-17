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
              'Junior Computer Science student at Universitas Gadjah Mada with strong experience in mobile app development '
              '(Flutter, Dart) and enterprise software (ASP.NET Core, Blazor, SQL Server). I have a proven track record '
              'of leading teams, delivering enterprise-grade applications, and integrating complex backend systems.\n\n'
              'Currently serving as Mobile Apps Lead at Sumbu Labs, where I drive technical decisions, maintain code quality standards, '
              'and mentor junior engineers. I\'m also working as a Software Developer Intern at LEN Logistics, building ERP systems '
              'and developing mobile applications for transport management.\n\n'
              'I\'m passionate about building scalable, user-focused software products that solve real business problems. '
              'My experience spans from offline-first mobile applications to enterprise web systems, always focusing on '
              'clean architecture and maintainable code.',
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
