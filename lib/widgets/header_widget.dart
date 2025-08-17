import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';
import 'package:portfolio/utils/navigation_service.dart';
import 'package:portfolio/widgets/buttons/terminal_nav_button.dart';

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
    return TerminalNavButton(
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
    return TerminalNavButton(
      title: title,
      onPressed: () => NavigationService.scrollToSection(title),
    );
  }
}
