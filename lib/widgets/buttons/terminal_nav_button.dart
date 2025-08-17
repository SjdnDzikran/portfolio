import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';

class TerminalNavButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  
  const TerminalNavButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  State<TerminalNavButton> createState() => _TerminalNavButtonState();
}

class _TerminalNavButtonState extends State<TerminalNavButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: BrandTheme.spacing2,
          vertical: BrandTheme.spacing1,
        ),
        decoration: BoxDecoration(
          border: _isHovered ? Border.all(
            color: BrandColors.brightGreen,
            width: 1,
          ) : Border.all(
            color: Colors.transparent,
            width: 1,
          ),
          borderRadius: BorderRadius.zero,
          boxShadow: _isHovered ? [
            BoxShadow(
              color: BrandColors.brightGreen.withOpacity(0.3),
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ] : null,
        ),
        child: GestureDetector(
          onTap: widget.onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '> ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: _isHovered ? BrandColors.brightGreen : BrandColors.softGreen,
                  fontFamily: 'monospace',
                ),
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: _isHovered ? BrandColors.brightGreen : BrandColors.cream,
                  letterSpacing: 1.0,
                  fontFamily: 'monospace',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
