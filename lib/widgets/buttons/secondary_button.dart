import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? borderColor;
  final Color? textColor;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.padding,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w500,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBorderColor = borderColor ?? const Color(0xFF4285F4);
    final effectiveTextColor = textColor ?? const Color(0xFF4285F4);

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: effectiveTextColor,
        padding: padding ?? const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        side: BorderSide(
          color: effectiveBorderColor,
          width: 1,
        ),
        splashFactory: NoSplash.splashFactory,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
