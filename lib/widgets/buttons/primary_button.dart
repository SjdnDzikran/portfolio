import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';


class PrimaryButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final IconData? icon;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: BrandColors.brightGreen,
          border: Border.all(
            color: BrandColors.baseDark,
            width: 2,
          ),
          borderRadius: BorderRadius.zero,
          boxShadow: _isHovered ? [
            BoxShadow(
              color: BrandColors.brightGreen.withOpacity(0.4),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ] : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.isLoading ? null : widget.onPressed,
            splashFactory: NoSplash.splashFactory,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: BrandTheme.spacing4,
                vertical: BrandTheme.spacing2,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.icon != null) ...[
                    Icon(
                      widget.icon,
                      size: 16,
                      color: BrandColors.baseDark,
                    ),
                    const SizedBox(width: BrandTheme.spacing1),
                  ],
                  if (widget.isLoading)
                    SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: BrandColors.baseDark,
                      ),
                    )
                  else
                    Text(
                      widget.text.toUpperCase(),
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: BrandColors.baseDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
