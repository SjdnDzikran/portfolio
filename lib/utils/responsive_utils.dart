import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class ResponsiveUtils {
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < AppSizes.mobileBreakpoint;
  }
  
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= AppSizes.mobileBreakpoint && width < AppSizes.tabletBreakpoint;
  }
  
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= AppSizes.tabletBreakpoint;
  }
  
  static double getResponsiveFontSize(BuildContext context, double mobile, double tablet, double desktop) {
    if (isMobile(context)) return mobile;
    if (isTablet(context)) return tablet;
    return desktop;
  }
  
  static double getResponsivePadding(BuildContext context, double mobile, double tablet, double desktop) {
    if (isMobile(context)) return mobile;
    if (isTablet(context)) return tablet;
    return desktop;
  }
  
  static int getResponsiveColumns(BuildContext context, int mobile, int tablet, int desktop) {
    if (isMobile(context)) return mobile;
    if (isTablet(context)) return tablet;
    return desktop;
  }
  
  static EdgeInsets getResponsiveHorizontalPadding(BuildContext context) {
    return EdgeInsets.symmetric(
      horizontal: getResponsivePadding(context, 24, 40, 80),
    );
  }
  
  static EdgeInsets getResponsiveVerticalPadding(BuildContext context) {
    return EdgeInsets.symmetric(
      vertical: getResponsivePadding(context, 60, 80, 100),
    );
  }
  
  static EdgeInsets getResponsivePaddingAll(BuildContext context) {
    return EdgeInsets.symmetric(
      horizontal: getResponsivePadding(context, 24, 40, 80),
      vertical: getResponsivePadding(context, 60, 80, 100),
    );
  }
}

class ResponsiveText extends StatelessWidget {
  final String text;
  final double mobileSize;
  final double tabletSize;
  final double desktopSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? letterSpacing;
  final double? height;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const ResponsiveText(
    this.text, {
    super.key,
    required this.mobileSize,
    required this.tabletSize,
    required this.desktopSize,
    this.fontWeight,
    this.color,
    this.letterSpacing,
    this.height,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: ResponsiveUtils.getResponsiveFontSize(context, mobileSize, tabletSize, desktopSize),
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  final double? mobileWidth;
  final double? tabletWidth;
  final double? desktopWidth;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;
  final AlignmentGeometry? alignment;

  const ResponsiveContainer({
    super.key,
    required this.child,
    this.mobileWidth,
    this.tabletWidth,
    this.desktopWidth,
    this.height,
    this.padding,
    this.margin,
    this.decoration,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    double? width;
    if (ResponsiveUtils.isMobile(context) && mobileWidth != null) {
      width = mobileWidth;
    } else if (ResponsiveUtils.isTablet(context) && tabletWidth != null) {
      width = tabletWidth;
    } else if (ResponsiveUtils.isDesktop(context) && desktopWidth != null) {
      width = desktopWidth;
    }

    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: decoration,
      alignment: alignment,
      child: child,
    );
  }
}
