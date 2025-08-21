import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';

/// Primary button following the design system's terminal aesthetic
/// High-priority actions and main CTAs with neon glow effects
class PrimaryButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final IconData? icon;
  final double? width;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
    this.width,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.02,
    ).animate(CurvedAnimation(
      parent: _scaleController,
      curve: Curves.easeOutCubic,
    ));
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => _isHovered = true);
        _scaleController.forward();
      },
      onExit: (_) {
        setState(() => _isHovered = false);
        _scaleController.reverse();
      },
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOutCubic,
          width: widget.width,
          constraints: const BoxConstraints(minHeight: 48), // 6 × 8px grid
          decoration: BoxDecoration(
            color: BrandColors.brightGreen,
            border: Border.all(
              color: BrandColors.mediumGray,
              width: 2,
            ),
            borderRadius: BorderRadius.zero, // Sharp edges for pixel aesthetic
            boxShadow: _isHovered ? [
              // Primary neon glow
              BoxShadow(
                color: BrandColors.brightGreen.withAlpha((0.3 * 255).round()),
                blurRadius: 8,
                spreadRadius: 2,
              ),
              // Secondary outer glow
              BoxShadow(
                color: BrandColors.brightGreen.withAlpha((0.1 * 255).round()),
                blurRadius: 24,
                spreadRadius: 4,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.isLoading)
                      SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: BrandColors.baseDark,
                        ),
                      )
                    else ...[
                      Text(
                        widget.text.toUpperCase(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: BrandColors.baseDark,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                      if (widget.icon != null) ...[
                        const SizedBox(width: BrandTheme.spacing1),
                        Icon(
                          widget.icon,
                          size: 16,
                          color: BrandColors.baseDark,
                        ),
                      ],
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
