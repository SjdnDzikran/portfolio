import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 24,
        vertical: 40,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFF202124),
      ),
      child: Column(
        children: [
          // Footer content
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Copyright
              Text(
                '© 2025 Dzikran Azka Sajidan. All rights reserved.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              
              // Social links
              Row(
                children: [
                  _buildSocialIcon(Icons.code, () {
                    // TODO: Open GitHub
                  }),
                  const SizedBox(width: 16),
                  _buildSocialIcon(Icons.business, () {
                    // TODO: Open LinkedIn
                  }),
                  const SizedBox(width: 16),
                  _buildSocialIcon(Icons.email, () {
                    // TODO: Open email
                  }),
                ],
              ),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // Back to top button
          TextButton(
            onPressed: () {
              // TODO: Scroll to top
            },
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              overlayColor: Colors.transparent,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white.withOpacity(0.8),
                  size: 20,
                ),
                const SizedBox(width: 4),
                Text(
                  'Back to top',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildSocialIcon(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      splashFactory: NoSplash.splashFactory,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Icon(
          icon,
          color: Colors.white.withOpacity(0.8),
          size: 18,
        ),
      ),
    );
  }
}
