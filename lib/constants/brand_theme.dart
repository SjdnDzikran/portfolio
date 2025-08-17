import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandColors {
  // Primary Palette
  static const Color baseDark = Color(0xFF15243D);
  static const Color manelaLight = Color(0xFFF7F0E2);
  static const Color purple = Color(0xFFC8B9FF);
  static const Color cream = Color(0xFFFCEAB8);
  static const Color softGreen = Color(0xFF77FF85);
  static const Color cleanWhite = Color(0xFFFFFFFF);
  
  // Highlight Accent
  static const Color brightGreen = Color(0xFF52FF00);
  
  // Additional colors for better contrast
  static const Color darkText = Color(0xFF000000);
  static const Color mediumGray = Color(0xFF666666);
}

class BrandTheme {
  static ThemeData get theme {
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: BrandColors.brightGreen,
        onPrimary: BrandColors.baseDark,
        secondary: BrandColors.purple,
        onSecondary: BrandColors.baseDark,
        error: Colors.red,
        onError: Colors.white,
        background: BrandColors.manelaLight,
        onBackground: BrandColors.baseDark,
        surface: BrandColors.cleanWhite,
        onSurface: BrandColors.baseDark,
      ),
      useMaterial3: true,
      textTheme: _buildTextTheme(),
      splashFactory: NoSplash.splashFactory,
      scaffoldBackgroundColor: BrandColors.manelaLight,
    );
  }
  
  static TextTheme _buildTextTheme() {
    return TextTheme(
      // Headers - Large, bold, pixel/mono
      headlineLarge: GoogleFonts.jetBrainsMono(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: BrandColors.baseDark,
        height: 1.2,
      ),
      headlineMedium: GoogleFonts.jetBrainsMono(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: BrandColors.baseDark,
        height: 1.2,
      ),
      headlineSmall: GoogleFonts.jetBrainsMono(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: BrandColors.baseDark,
        height: 1.2,
      ),
      
      // Subheads - Medium, lighter weight
      titleLarge: GoogleFonts.jetBrainsMono(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: BrandColors.baseDark,
        height: 1.3,
      ),
      titleMedium: GoogleFonts.jetBrainsMono(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: BrandColors.baseDark,
        height: 1.3,
      ),
      titleSmall: GoogleFonts.jetBrainsMono(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: BrandColors.baseDark,
        height: 1.3,
      ),
      
      // Body text - Regular, readable
      bodyLarge: GoogleFonts.jetBrainsMono(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: BrandColors.baseDark,
        height: 1.6,
      ),
      bodyMedium: GoogleFonts.jetBrainsMono(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: BrandColors.baseDark,
        height: 1.6,
      ),
      bodySmall: GoogleFonts.jetBrainsMono(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: BrandColors.mediumGray,
        height: 1.6,
      ),
      
      // Labels and buttons
      labelLarge: GoogleFonts.jetBrainsMono(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: BrandColors.baseDark,
        letterSpacing: 0.5,
      ),
      labelMedium: GoogleFonts.jetBrainsMono(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: BrandColors.baseDark,
        letterSpacing: 0.5,
      ),
      labelSmall: GoogleFonts.jetBrainsMono(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: BrandColors.mediumGray,
        letterSpacing: 0.5,
      ),
    );
  }
  
  // Spacing system - 8px multiples with 4px sub-grid
  static const double spacing05 = 4.0;  // 0.5x (sub-grid)
  static const double spacing1 = 8.0;   // 1x (base unit)
  static const double spacing2 = 16.0;  // 2x (standard)
  static const double spacing3 = 24.0;  // 3x (medium)
  static const double spacing4 = 32.0;  // 4x (large)
  static const double spacing5 = 40.0;  // 5x (XL)
  static const double spacing6 = 48.0;  // 6x (XXL)
  static const double spacing8 = 64.0;  // 8x (major)
  static const double spacing10 = 80.0; // 10x (hero)
  static const double spacing12 = 96.0; // 12x (max)
}

class BrandDecorations {
  // Grid-inspired borders
  static BoxDecoration gridCard({Color? backgroundColor}) {
    return BoxDecoration(
      color: backgroundColor ?? BrandColors.cleanWhite,
      border: Border.all(
        color: BrandColors.baseDark,
        width: 2,
      ),
      borderRadius: BorderRadius.zero, // Square edges for pixel aesthetic
    );
  }
  
  // Terminal-inspired containers
  static BoxDecoration terminalContainer({Color? backgroundColor}) {
    return BoxDecoration(
      color: backgroundColor ?? BrandColors.baseDark,
      border: Border.all(
        color: BrandColors.brightGreen,
        width: 1,
      ),
      borderRadius: BorderRadius.zero,
    );
  }
  
  // Neon glow effect for hover states
  static BoxDecoration neonGlow({Color glowColor = BrandColors.brightGreen}) {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: glowColor.withOpacity(0.3),
          blurRadius: 8,
          spreadRadius: 2,
        ),
      ],
    );
  }
}
