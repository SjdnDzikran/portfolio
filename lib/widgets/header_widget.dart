import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';
import 'package:portfolio/utils/navigation_service.dart';

class PortfolioSliverAppBar extends StatelessWidget {
  const PortfolioSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: BrandColors.baseDark,
      elevation: 0,
      toolbarHeight: 80,
      automaticallyImplyLeading: false,
      floating: true, // Shows when scrolling up
      snap: true,     // Snaps to show/hide
      pinned: false,  // Doesn't stay pinned at top
      centerTitle: true,
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: BrandTheme.spacing2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildNavItem('About'),
            const SizedBox(width: BrandTheme.spacing2),
            _buildNavItem('Projects'),
            const SizedBox(width: BrandTheme.spacing2),
            _buildNavItem('Skills'),
            const SizedBox(width: BrandTheme.spacing2),
            _buildNavItem('Experience'),
            const SizedBox(width: BrandTheme.spacing2),
            _buildNavItem('Contact'),
          ],
        ),
      ),
    );
  }
  
  Widget _buildNavItem(String title) {
    return _TerminalNavButton(
      title: title,
      onPressed: () => NavigationService.scrollToSection(title),
    );
  }
}

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: BrandColors.baseDark,
      elevation: 0,
      toolbarHeight: 80,
      automaticallyImplyLeading: false, // Remove back button
      centerTitle: true,
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: BrandTheme.spacing2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildNavItem('ABOUT'),
            const SizedBox(width: BrandTheme.spacing2),
            _buildNavItem('PROJECTS'),
            const SizedBox(width: BrandTheme.spacing2),
            _buildNavItem('SKILLS'),
            const SizedBox(width: BrandTheme.spacing2),
            _buildNavItem('EXPERIENCE'),
            const SizedBox(width: BrandTheme.spacing2),
            _buildNavItem('CONTACT'),
          ],
        ),
      ),
    );
  }
  
  Widget _buildNavItem(String title) {
    return _TerminalNavButton(
      title: title,
      onPressed: () => NavigationService.scrollToSection(title),
    );
  }
}

class _TerminalNavButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  
  const _TerminalNavButton({
    required this.title,
    required this.onPressed,
  });

  @override
  State<_TerminalNavButton> createState() => _TerminalNavButtonState();
}

class _TerminalNavButtonState extends State<_TerminalNavButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
