import 'package:flutter/material.dart';
import '../constants/brand_theme.dart';
import '../utils/navigation_service.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? BrandTheme.spacing10 : BrandTheme.spacing3,
        vertical: BrandTheme.spacing6,
      ),
      decoration: BoxDecoration(
        color: BrandColors.baseDark,
        border: Border(
          top: BorderSide(
            color: BrandColors.brightGreen,
            width: 2,
          ),
        ),
      ),
      child: Column(
        children: [
          // Terminal-style system info
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(BrandTheme.spacing2),
            decoration: BoxDecoration(
              border: Border.all(
                color: BrandColors.brightGreen,
                width: 1,
              ),
              borderRadius: BorderRadius.zero,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '> SYSTEM_INFO',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: BrandColors.brightGreen,
                    fontFamily: 'monospace',
                  ),
                ),
                const SizedBox(height: BrandTheme.spacing1),
                Text(
                  '© 2025 DZIKRAN_AZKA_SAJIDAN. ALL_RIGHTS_RESERVED.\n'
                  'PORTFOLIO_VERSION: 2.0.0\n'
                  'FRAMEWORK: FLUTTER_WEB\n'
                  'DESIGN_SYSTEM: TERMINAL_INSPIRED',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: BrandColors.cream,
                    height: 1.6,
                    fontFamily: 'monospace',
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: BrandTheme.spacing4),
          
          // Social and navigation links
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Navigation links
              if (isDesktop) ...[
                Row(
                  children: [
                    Text(
                      '> QUICK_NAV: ',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: BrandColors.brightGreen,
                        fontFamily: 'monospace',
                      ),
                    ),
                    _buildNavLink('ABOUT'),
                    const SizedBox(width: BrandTheme.spacing2),
                    _buildNavLink('PROJECTS'),
                    const SizedBox(width: BrandTheme.spacing2),
                    _buildNavLink('CONTACT'),
                  ],
                ),
              ] else ...[
                // Mobile: Just show social links
                Container(),
              ],
              
              // Social links
              Row(
                children: [
                  Text(
                    '> CONNECT: ',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: BrandColors.brightGreen,
                      fontFamily: 'monospace',
                    ),
                  ),
                  _buildSocialIcon(Icons.code, BrandColors.softGreen, () {
                    // TODO: Open GitHub
                  }),
                  const SizedBox(width: BrandTheme.spacing1),
                  _buildSocialIcon(Icons.business, BrandColors.purple, () {
                    // TODO: Open LinkedIn
                  }),
                  const SizedBox(width: BrandTheme.spacing1),
                  _buildSocialIcon(Icons.email, BrandColors.brightGreen, () {
                    // TODO: Open email
                  }),
                ],
              ),
            ],
          ),
          
          const SizedBox(height: BrandTheme.spacing4),
          
          // Back to top terminal command
          Container(
            padding: const EdgeInsets.all(BrandTheme.spacing2),
            decoration: BoxDecoration(
              border: Border.all(
                color: BrandColors.mediumGray,
                width: 1,
              ),
              borderRadius: BorderRadius.zero,
            ),
            child: GestureDetector(
              onTap: () {
                // TODO: Scroll to top
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '> ',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: BrandColors.brightGreen,
                      fontFamily: 'monospace',
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: BrandColors.cream,
                    size: 16,
                  ),
                  const SizedBox(width: BrandTheme.spacing1),
                  Text(
                    'SCROLL_TO_TOP',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: BrandColors.cream,
                      fontFamily: 'monospace',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildNavLink(String text) {
    return GestureDetector(
      onTap: () => NavigationService.scrollToSection(text),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: BrandColors.cream,
          fontFamily: 'monospace',
        ),
      ),
    );
  }
  
  Widget _buildSocialIcon(IconData icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: 1,
          ),
          borderRadius: BorderRadius.zero,
        ),
        child: Icon(
          icon,
          color: color,
          size: 12,
        ),
      ),
    );
  }
}
