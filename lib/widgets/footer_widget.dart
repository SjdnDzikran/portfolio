import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/brand_theme.dart';
import '../utils/navigation_service.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  // Helper method to launch URLs
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  // Helper method to launch email
  Future<void> _launchEmail(String email) async {
    final Uri uri = Uri.parse('mailto:$email');
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch email client');
    }
  }

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
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: BrandColors.brightGreen,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: BrandTheme.spacing1),
                Text(
                  '© 2025 DZIKRAN_AZKA_SAJIDAN. ALL_RIGHTS_RESERVED.\n'
                  'PORTFOLIO_VERSION: 2.0.0\n'
                  'FRAMEWORK: FLUTTER_WEB\n'
                  'DESIGN_SYSTEM: TERMINAL_INSPIRED',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: BrandColors.cream,
                    height: 1.6,
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
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: BrandColors.brightGreen,
                        fontWeight: FontWeight.bold,
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
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: BrandColors.brightGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _buildSocialIcon(Icons.code, BrandColors.softGreen, () {
                    _launchUrl('https://github.com/SjdnDzikran');
                  }),
                  const SizedBox(width: BrandTheme.spacing1),
                  _buildSocialIcon(Icons.business, BrandColors.purple, () {
                    _launchUrl('https://www.linkedin.com/in/dzikranazkasajidan/');
                  }),
                  const SizedBox(width: BrandTheme.spacing1),
                  _buildSocialIcon(Icons.email, BrandColors.brightGreen, () {
                    _launchEmail('sjdn.dzikran@gmail.com');
                  }),
                ],
              ),
            ],
          ),
          
          const SizedBox(height: BrandTheme.spacing4),
          
          // Back to top terminal command
          _HoverableScrollToTop(),
        ],
      ),
    );
  }
  
  Widget _buildNavLink(String text) {
    return _HoverableNavLink(
      text: text,
      onTap: () => NavigationService.scrollToSection(text),
    );
  }
  
  Widget _buildSocialIcon(IconData icon, Color color, VoidCallback onTap) {
    return _HoverableSocialIcon(
      icon: icon,
      color: color,
      onTap: onTap,
    );
  }
}

/// Hoverable navigation link with terminal-style effects
class _HoverableNavLink extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const _HoverableNavLink({
    required this.text,
    required this.onTap,
  });

  @override
  State<_HoverableNavLink> createState() => _HoverableNavLinkState();
}

class _HoverableNavLinkState extends State<_HoverableNavLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: BrandTheme.spacing1,
          vertical: BrandTheme.spacing05,
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
          onTap: widget.onTap,
          child: Text(
            widget.text,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: _isHovered ? BrandColors.brightGreen : BrandColors.cream,
            ),
          ),
        ),
      ),
    );
  }
}

/// Hoverable social icon with glow effects
class _HoverableSocialIcon extends StatefulWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _HoverableSocialIcon({
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  State<_HoverableSocialIcon> createState() => _HoverableSocialIconState();
}

class _HoverableSocialIconState extends State<_HoverableSocialIcon>
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
      end: 1.1,
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
      cursor: SystemMouseCursors.click,
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
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            border: Border.all(
              color: _isHovered ? widget.color : widget.color,
              width: _isHovered ? 2 : 1,
            ),
            borderRadius: BorderRadius.zero,
            boxShadow: _isHovered ? [
              // Primary glow with the original color
              BoxShadow(
                color: widget.color.withOpacity(0.4),
                blurRadius: 8,
                spreadRadius: 2,
              ),
              // Secondary subtle glow
              BoxShadow(
                color: widget.color.withOpacity(0.2),
                blurRadius: 16,
                spreadRadius: 4,
              ),
            ] : null,
          ),
          child: GestureDetector(
            onTap: widget.onTap,
            child: Icon(
              widget.icon,
              color: _isHovered ? widget.color : widget.color,
              size: 12,
            ),
          ),
        ),
      ),
    );
  }
}

/// Hoverable scroll to top button with terminal command styling
class _HoverableScrollToTop extends StatefulWidget {
  const _HoverableScrollToTop();

  @override
  State<_HoverableScrollToTop> createState() => _HoverableScrollToTopState();
}

class _HoverableScrollToTopState extends State<_HoverableScrollToTop> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(BrandTheme.spacing2),
        decoration: BoxDecoration(
          border: Border.all(
            color: _isHovered ? BrandColors.brightGreen : BrandColors.mediumGray,
            width: _isHovered ? 2 : 1,
          ),
          borderRadius: BorderRadius.zero,
          boxShadow: _isHovered ? [
            BoxShadow(
              color: BrandColors.brightGreen.withOpacity(0.3),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ] : null,
        ),
        child: GestureDetector(
          onTap: () {
            NavigationService.scrollToTop();
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '> ',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: BrandColors.brightGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_up,
                color: _isHovered ? BrandColors.brightGreen : BrandColors.cream,
                size: 16,
              ),
              const SizedBox(width: BrandTheme.spacing1),
              Text(
                'SCROLL_TO_TOP',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: _isHovered ? BrandColors.brightGreen : BrandColors.cream,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}