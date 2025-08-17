import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';

/// Secondary button following the design system's terminal aesthetic
/// Supporting actions and alternatives with neon border effects
class SecondaryButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final IconData? icon;
  final double? width;

  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
    this.width,
  });

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _fillController;
  late Animation<double> _fillAnimation;

  @override
  void initState() {
    super.initState();
    _fillController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _fillAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _fillController,
      curve: Curves.easeOutCubic,
    ));
  }

  @override
  void dispose() {
    _fillController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => _isHovered = true);
        _fillController.forward();
      },
      onExit: (_) {
        setState(() => _isHovered = false);
        _fillController.reverse();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutCubic,
        width: widget.width,
        constraints: const BoxConstraints(minHeight: 48), // 6 × 8px grid
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: BrandColors.brightGreen,
            width: 2,
          ),
          borderRadius: BorderRadius.zero, // Sharp edges for pixel aesthetic
          boxShadow: _isHovered ? [
            // Neon glow effect
            BoxShadow(
              color: BrandColors.brightGreen.withOpacity(0.3),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ] : null,
        ),
        child: Stack(
          children: [
            // Animated background fill on hover
            AnimatedBuilder(
              animation: _fillAnimation,
              builder: (context, child) {
                return Positioned.fill(
                  child: Container(
                    color: BrandColors.brightGreen.withOpacity(
                      _fillAnimation.value * 0.1,
                    ),
                  ),
                );
              },
            ),
            
            // Button content
            Material(
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
                            color: BrandColors.brightGreen,
                          ),
                        )
                      else ...[
                        Text(
                          widget.text.toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: BrandColors.brightGreen,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                          ),
                        ),
                        if (widget.icon != null) ...[
                          const SizedBox(width: BrandTheme.spacing1),
                          Icon(
                            widget.icon,
                            size: 16,
                            color: BrandColors.brightGreen,
                          ),
                        ],
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
