import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';
import 'package:portfolio/utils/navigation_service.dart';
import 'package:portfolio/widgets/buttons/primary_button.dart';
import 'package:portfolio/widgets/buttons/secondary_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    final isTablet = screenWidth > 768 && screenWidth <= 1024;
    
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: BrandColors.baseDark,
        border: Border.all(
          color: BrandColors.brightGreen,
          width: 2,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? BrandTheme.spacing10 : (isTablet ? BrandTheme.spacing5 : BrandTheme.spacing3),
        vertical: isDesktop ? BrandTheme.spacing12 : BrandTheme.spacing10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Terminal prompt indicator
          Text(
            '> INITIALIZING_PORTFOLIO_v2.0',
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: BrandColors.brightGreen,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: BrandTheme.spacing3),
          
          // Main heading with pixel-inspired styling
          Container(
            padding: const EdgeInsets.all(BrandTheme.spacing2),
            decoration: BoxDecoration(
              border: Border.all(
                color: BrandColors.cream,
                width: 1,
              ),
              borderRadius: BorderRadius.zero,
            ),
            child: Text(
              'DZIKRAN AZKA SAJIDAN',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: isDesktop ? 48 : (isTablet ? 36 : 28),
                color: BrandColors.cream,
                letterSpacing: 3.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
          const SizedBox(height: BrandTheme.spacing3),
          
          // Subtitle with terminal styling
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '> STATUS: ',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: isDesktop ? 18 : 16,
                  color: BrandColors.brightGreen,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'MOBILE_APP_DEVELOPER',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: isDesktop ? 18 : 16,
                  color: BrandColors.purple,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
          
          const SizedBox(height: BrandTheme.spacing1),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '> SPECIALIZATION: ',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: isDesktop ? 18 : 16,
                  color: BrandColors.brightGreen,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'FLUTTER_&_ENTERPRISE_SOFTWARE',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: isDesktop ? 18 : 16,
                  color: BrandColors.softGreen,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
          
          const SizedBox(height: BrandTheme.spacing6),
          
          // Action buttons with terminal styling
          Wrap(
            spacing: BrandTheme.spacing2,
            runSpacing: BrandTheme.spacing2,
            alignment: WrapAlignment.center,
            children: [
              PrimaryButton(
                text: 'View Projects',
                onPressed: () => NavigationService.scrollToSection('PROJECTS'),
                icon: Icons.keyboard_arrow_right,
              ),
              
              SecondaryButton(
                text: 'Contact Me',
                onPressed: () => NavigationService.scrollToSection('CONTACT'),
                icon: Icons.terminal,
              ),
            ],
          ),
          
          const SizedBox(height: BrandTheme.spacing4),
          
          // System info footer
          Text(
            '[ SYSTEM_READY ] [ PORTFOLIO_LOADED ] [ SCROLL_TO_EXPLORE ]',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: BrandColors.mediumGray,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
