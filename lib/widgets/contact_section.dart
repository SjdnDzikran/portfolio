import 'package:flutter/material.dart';
import 'package:portfolio/widgets/buttons/primary_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    final isTablet = screenWidth > 768 && screenWidth <= 1024;
    
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : (isTablet ? 40 : 24),
        vertical: isDesktop ? 100 : 60,
      ),
      color: const Color(0xFFF8F9FA),
      child: Column(
        children: [
          // Section title
          Text(
            'Get In Touch',
            style: TextStyle(
              fontSize: isDesktop ? 48 : (isTablet ? 40 : 32),
              fontWeight: FontWeight.w300,
              color: const Color(0xFF202124),
              letterSpacing: -1.0,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 24),
          
          // Subtitle
          Container(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Text(
              'Have a project in mind or want to discuss opportunities? I\'d love to hear from you!',
              style: TextStyle(
                fontSize: isDesktop ? 18 : 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF5F6368),
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
          const SizedBox(height: 48),
          
          // Contact options
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: _buildContactCard(
                    'Email',
                    'dzikran@example.com',
                    Icons.email_outlined,
                    () {
                      // TODO: Open email client
                    },
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: _buildContactCard(
                    'LinkedIn',
                    'Connect with me',
                    Icons.business,
                    () {
                      // TODO: Open LinkedIn
                    },
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: _buildContactCard(
                    'GitHub',
                    'View my code',
                    Icons.code,
                    () {
                      // TODO: Open GitHub
                    },
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 48),
          
          // Primary contact button
          PrimaryButton(
            text: 'Send Message',
            onPressed: () {
              // TODO: Open email or contact form
            },
          ),
        ],
      ),
    );
  }
  
  Widget _buildContactCard(String title, String subtitle, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      splashFactory: NoSplash.splashFactory,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xFFE8EAED),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha((0.05*255).round()),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: const Color(0xFF4285F4),
              size: 32,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF202124),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF5F6368),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
