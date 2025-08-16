import 'package:flutter/material.dart';

class AppColors {
  // Primary colors (Google-inspired)
  static const Color primary = Color(0xFF4285F4);
  static const Color primaryLight = Color(0xFF6FA8F5);
  static const Color primaryDark = Color(0xFF1976D2);
  
  // Text colors
  static const Color textPrimary = Color(0xFF202124);
  static const Color textSecondary = Color(0xFF5F6368);
  static const Color textLight = Color(0xFF9AA0A6);
  
  // Background colors
  static const Color background = Colors.white;
  static const Color backgroundLight = Color(0xFFF8F9FA);
  static const Color backgroundDark = Color(0xFF202124);
  
  // Border colors
  static const Color border = Color(0xFFE8EAED);
  static const Color borderLight = Color(0xFFF1F3F4);
  
  // Status colors
  static const Color success = Color(0xFF34A853);
  static const Color warning = Color(0xFFFBBC04);
  static const Color error = Color(0xFFEA4335);
}

class AppTextStyles {
  // Headings
  static const TextStyle heading1 = TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.w300,
    color: AppColors.textPrimary,
    letterSpacing: -2.0,
    height: 1.1,
  );
  
  static const TextStyle heading2 = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w300,
    color: AppColors.textPrimary,
    letterSpacing: -1.0,
  );
  
  static const TextStyle heading3 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );
  
  // Body text
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.6,
    letterSpacing: 0.1,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.5,
  );
  
  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.4,
  );
  
  // Labels
  static const TextStyle labelLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
  
  static const TextStyle labelMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
  
  static const TextStyle labelSmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );
}

class AppSizes {
  // Spacing
  static const double spacingXs = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 16.0;
  static const double spacingL = 24.0;
  static const double spacingXl = 32.0;
  static const double spacingXxl = 48.0;
  static const double spacingXxxl = 64.0;
  
  // Padding
  static const double paddingS = 12.0;
  static const double paddingM = 16.0;
  static const double paddingL = 24.0;
  static const double paddingXl = 32.0;
  
  // Radius
  static const double radiusS = 8.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXl = 20.0;
  
  // Breakpoints
  static const double mobileBreakpoint = 768;
  static const double tabletBreakpoint = 1024;
  static const double desktopBreakpoint = 1200;
}

class AppStrings {
  // Personal info
  static const String name = 'Dzikran Azka Sajidan';
  static const String title = 'Software Engineer';
  static const String subtitle = 'Specializing in Mobile App Development & Blockchain Solutions';
  static const String email = 'dzikran@example.com'; // Update with your real email
  
  // Navigation
  static const String navAbout = 'About';
  static const String navProjects = 'Projects';
  static const String navSkills = 'Skills';
  static const String navExperience = 'Experience';
  static const String navContact = 'Contact';
  
  // Buttons
  static const String btnViewProjects = 'View Projects';
  static const String btnContactMe = 'Contact Me';
  static const String btnSendMessage = 'Send Message';
  static const String btnViewDemo = 'View Demo';
  static const String btnViewCode = 'Code';
  
  // Section titles
  static const String sectionAbout = 'About Me';
  static const String sectionSkills = 'Skills & Technologies';
  static const String sectionProjects = 'Featured Projects';
  static const String sectionExperience = 'Experience';
  static const String sectionContact = 'Get In Touch';
}
