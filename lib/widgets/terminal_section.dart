import 'package:flutter/material.dart';
import '../constants/brand_theme.dart';

class TerminalSection extends StatelessWidget {
  final String title;
  final Widget child;
  final Color? backgroundColor;
  final bool showBorder;
  final EdgeInsetsGeometry? padding;

  const TerminalSection({
    super.key,
    required this.title,
    required this.child,
    this.backgroundColor,
    this.showBorder = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    final isTablet = screenWidth > 768 && screenWidth <= 1024;
    
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: BrandTheme.spacing4),
      padding: padding ?? EdgeInsets.symmetric(
        horizontal: isDesktop ? BrandTheme.spacing10 : (isTablet ? BrandTheme.spacing5 : BrandTheme.spacing3),
        vertical: BrandTheme.spacing8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? BrandColors.cleanWhite,
        border: showBorder ? Border.all(
          color: BrandColors.baseDark,
          width: 2,
        ) : null,
        borderRadius: BorderRadius.zero,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header with terminal prompt
          Row(
            children: [
              Text(
                '> ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: BrandColors.brightGreen,
                  fontFamily: 'monospace',
                ),
              ),
              Text(
                title.toUpperCase().replaceAll(' ', '_'),
                style: TextStyle(
                  fontSize: isDesktop ? 28 : 24,
                  fontWeight: FontWeight.bold,
                  color: BrandColors.baseDark,
                  letterSpacing: 2.0,
                  fontFamily: 'monospace',
                ),
              ),
              const SizedBox(width: BrandTheme.spacing2),
              Expanded(
                child: Container(
                  height: 2,
                  color: BrandColors.brightGreen,
                ),
              ),
            ],
          ),
          
          const SizedBox(height: BrandTheme.spacing1),
          
          // Status indicator
          Text(
            '[ LOADING_MODULE ] [ STATUS: READY ]',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: BrandColors.mediumGray,
              letterSpacing: 1.0,
              fontFamily: 'monospace',
            ),
          ),
          
          const SizedBox(height: BrandTheme.spacing4),
          
          // Content
          child,
        ],
      ),
    );
  }
}

class GridCard extends StatefulWidget {
  final Widget child;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool showHoverEffect;

  const GridCard({
    super.key,
    required this.child,
    this.backgroundColor,
    this.padding,
    this.showHoverEffect = true,
  });

  @override
  State<GridCard> createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: widget.showHoverEffect ? (_) => setState(() => _isHovered = true) : null,
      onExit: widget.showHoverEffect ? (_) => setState(() => _isHovered = false) : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: widget.padding ?? const EdgeInsets.all(BrandTheme.spacing3),
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? BrandColors.cleanWhite,
          border: Border.all(
            color: _isHovered ? BrandColors.brightGreen : BrandColors.baseDark,
            width: _isHovered ? 2 : 1,
          ),
          borderRadius: BorderRadius.zero,
          boxShadow: _isHovered && widget.showHoverEffect ? [
            BoxShadow(
              color: BrandColors.brightGreen.withOpacity(0.2),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ] : null,
        ),
        child: widget.child,
      ),
    );
  }
}
