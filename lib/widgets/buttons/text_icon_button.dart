import 'package:flutter/material.dart';

class TextIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? iconSize;

  const TextIconButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.padding,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.color,
    this.iconSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveColor = color ?? const Color(0xFF4285F4);

    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: iconSize),
      label: Text(text),
      style: TextButton.styleFrom(
        foregroundColor: effectiveColor,
        padding: padding ?? EdgeInsets.zero,
        splashFactory: NoSplash.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
