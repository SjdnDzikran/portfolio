import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';

/// Grid-based card component following the blueprint aesthetic
/// with precise grid alignment and terminal-inspired borders
class GridCard extends StatefulWidget {
  final Widget child;
  final Color? backgroundColor;
  final bool showGrid;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final bool enableHover;

  const GridCard({
    super.key,
    required this.child,
    this.backgroundColor,
    this.showGrid = false,
    this.width,
    this.height,
    this.padding,
    this.enableHover = true,
  });

  @override
  State<GridCard> createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: widget.enableHover ? (_) => setState(() => _isHovered = true) : null,
      onExit: widget.enableHover ? (_) => setState(() => _isHovered = false) : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutCubic,
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? BrandColors.cream,
          border: Border.all(
            color: _isHovered ? BrandColors.brightGreen : BrandColors.baseDark,
            width: _isHovered ? 2 : 1,
          ),
          borderRadius: BorderRadius.zero, // Sharp edges for pixel aesthetic
          boxShadow: _isHovered ? [
            BoxShadow(
              color: BrandColors.brightGreen.withAlpha((0.2 * 255).round()),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ] : null,
        ),
        child: Stack(
          children: [
            // Optional grid overlay
            if (widget.showGrid) _buildGridOverlay(),
            
            // Main content
            Container(
              padding: widget.padding ?? const EdgeInsets.all(BrandTheme.spacing3),
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridOverlay() {
    return Positioned.fill(
      child: CustomPaint(
        painter: GridPainter(
          gridColor: BrandColors.baseDark.withAlpha((0.1 * 255).round()),
          gridSpacing: 8.0,
        ),
      ),
    );
  }
}

/// Custom painter for grid overlay following 8px grid system
class GridPainter extends CustomPainter {
  final Color gridColor;
  final double gridSpacing;

  GridPainter({
    required this.gridColor,
    this.gridSpacing = 8.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = gridColor
      ..strokeWidth = 0.5
      ..style = PaintingStyle.stroke;

    // Draw vertical lines
    for (double x = 0; x <= size.width; x += gridSpacing) {
      canvas.drawLine(
        Offset(x, 0),
        Offset(x, size.height),
        paint,
      );
    }

    // Draw horizontal lines
    for (double y = 0; y <= size.height; y += gridSpacing) {
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Profile card with grid overlay and terminal styling
class ProfileCard extends StatelessWidget {
  final String name;
  final String title;
  final String status;
  final String? imageUrl;
  final bool showGridOverlay;

  const ProfileCard({
    super.key,
    required this.name,
    required this.title,
    required this.status,
    this.imageUrl,
    this.showGridOverlay = true,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    
    return GridCard(
      backgroundColor: BrandColors.cream,
      showGrid: showGridOverlay,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile image with optional grid overlay
          Container(
            width: isDesktop ? 120 : 100,
            height: isDesktop ? 120 : 100,
            decoration: BoxDecoration(
              color: BrandColors.purple.withAlpha((0.1 * 255).round()),
              border: Border.all(
                color: BrandColors.baseDark,
                width: 2,
              ),
              borderRadius: BorderRadius.zero,
            ),
            child: imageUrl != null
                ? Image.asset(
                    imageUrl!,
                    fit: BoxFit.cover,
                  )
                : Icon(
                    Icons.person_outline_rounded,
                    size: isDesktop ? 60 : 50,
                    color: BrandColors.baseDark,
                  ),
          ),
          
          const SizedBox(height: BrandTheme.spacing3),
          
          // Name with terminal styling
          Text(
            name,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: BrandColors.baseDark,
              letterSpacing: 1.0,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: BrandTheme.spacing1),
          
          // Title with status format
          Text(
            '> STATUS: $title',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: BrandColors.brightGreen,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: BrandTheme.spacing05),
          
          // Status indicator
          Text(
            '[ $status ]',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: BrandColors.softGreen,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
