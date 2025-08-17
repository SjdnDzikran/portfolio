import 'package:flutter/material.dart';

class PortfolioSliverAppBar extends StatelessWidget {
  const PortfolioSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: Colors.grey.withAlpha(25),
      toolbarHeight: 80,
      automaticallyImplyLeading: false,
      floating: true, // Shows when scrolling up
      snap: true,     // Snaps to show/hide
      pinned: false,  // Doesn't stay pinned at top
      title: Text(
        'Dzikran Azka Sajidan',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF202124),
        ),
      ),
      actions: [
        // Navigation items
        _buildNavItem('About'),
        _buildNavItem('Projects'),
        _buildNavItem('Skills'),
        _buildNavItem('Experience'),
        _buildNavItem('Contact'),
        const SizedBox(width: 24), // Right padding
      ],
    );
  }
  
  Widget _buildNavItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () {
          // TODO: Implement navigation
        },
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          overlayColor: Colors.transparent,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF5F6368),
          ),
        ),
      ),
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
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: Colors.grey.withAlpha(25),
      toolbarHeight: 80,
      automaticallyImplyLeading: false, // Remove back button
      title: Text(
        'Dzikran Azka Sajidan',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF202124),
        ),
      ),
      actions: [
        // Navigation items
        _buildNavItem('About'),
        _buildNavItem('Projects'),
        _buildNavItem('Skills'),
        _buildNavItem('Experience'),
        _buildNavItem('Contact'),
        const SizedBox(width: 24), // Right padding
      ],
    );
  }
  
  Widget _buildNavItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () {
          // TODO: Implement navigation
        },
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF5F6368),
          ),
        ),
      ),
    );
  }
}

// Keep the old HeaderWidget for backward compatibility if needed
