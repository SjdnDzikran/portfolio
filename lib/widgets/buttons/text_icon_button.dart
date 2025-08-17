import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';


class TextIconButton extends StatefulWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? iconColor;

  const TextIconButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.textColor,
    this.iconColor,
  });

  @override
  State<TextIconButton> createState() => _TextIconButtonState();
}

class _TextIconButtonState extends State<TextIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final effectiveTextColor = widget.textColor ?? BrandColors.brightGreen;
    final effectiveIconColor = widget.iconColor ?? BrandColors.brightGreen;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
            horizontal: BrandTheme.spacing2,
            vertical: BrandTheme.spacing1,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: _isHovered ? effectiveTextColor : Colors.transparent,
              width: 1,
            ),
            borderRadius: BorderRadius.zero,
            boxShadow: _isHovered ? [
              BoxShadow(
                color: effectiveTextColor.withOpacity(0.2),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ] : null,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '> ',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: effectiveTextColor,
                  fontFamily: 'monospace',
                ),
              ),
              Icon(
                widget.icon,
                size: 14,
                color: effectiveIconColor,
              ),
              const SizedBox(width: BrandTheme.spacing1),
              Text(
                widget.text.toUpperCase().replaceAll(' ', '_'),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: effectiveTextColor,
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
