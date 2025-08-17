import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';
import 'package:portfolio/widgets/buttons/primary_button.dart';
import 'package:portfolio/widgets/terminal_section.dart';


class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    
    return TerminalSection(
      title: 'Get In Touch',
      backgroundColor: BrandColors.baseDark,
      child: Column(
        children: [
          // Terminal prompt intro
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(BrandTheme.spacing3),
            decoration: BoxDecoration(
              color: BrandColors.baseDark,
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
                  '> CONTACT_PROTOCOL_INITIALIZED',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: BrandColors.brightGreen,
                  ),
                ),
                const SizedBox(height: BrandTheme.spacing1),
                Text(
                  'Have a project in mind or want to discuss opportunities?\nI\'d love to connect and explore how we can work together.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: BrandColors.cream,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: BrandTheme.spacing4),
          
          // Contact methods grid
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: isDesktop ? 3 : 1,
            mainAxisSpacing: BrandTheme.spacing3,
            crossAxisSpacing: BrandTheme.spacing3,
            childAspectRatio: isDesktop ? 1.2 : 2.0,
            children: [
              _buildContactCard(
                'EMAIL',
                'sjdn.dzikran@email.com',
                Icons.email_outlined,
                BrandColors.brightGreen,
                () {
                  // TODO: Open email client
                },
              ),
              _buildContactCard(
                'LINKEDIN',
                'linkedin.com/in/dzikranazkasajidan',
                Icons.business,
                BrandColors.purple,
                () {
                  // TODO: Open LinkedIn
                },
              ),
              _buildContactCard(
                'GITHUB',
                'github.com/SjdnDzikran',
                Icons.code,
                BrandColors.softGreen,
                () {
                  // TODO: Open GitHub
                },
              ),
            ],
          ),
          
          const SizedBox(height: BrandTheme.spacing6),
          
          // Primary contact action
          Container(
            padding: const EdgeInsets.all(BrandTheme.spacing3),
            decoration: BoxDecoration(
              border: Border.all(
                color: BrandColors.brightGreen,
                width: 2,
              ),
              borderRadius: BorderRadius.zero,
            ),
            child: Column(
              children: [
                Text(
                  '> READY_TO_ESTABLISH_CONNECTION?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: BrandColors.brightGreen,
                  ),
                ),
                const SizedBox(height: BrandTheme.spacing2),
                PrimaryButton(
                  text: 'Send Message',
                  icon: Icons.send,
                  onPressed: () {
                    // TODO: Open email or contact form
                  },
                ),
                const SizedBox(height: BrandTheme.spacing1),
                Text(
                  '[ ENCRYPTED_CHANNEL_READY ]',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: BrandColors.mediumGray,
                     
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildContactCard(String title, String subtitle, IconData icon, Color accentColor, VoidCallback onTap) {
    return GridCard(
      backgroundColor: BrandColors.cleanWhite,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '> ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: BrandColors.brightGreen,
                     
                  ),
                ),
                Icon(
                  icon,
                  color: accentColor,
                  size: 20,
                ),
                const SizedBox(width: BrandTheme.spacing1),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: BrandColors.baseDark,
                       
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: BrandTheme.spacing1),
            
            Text(
              '[ STATUS: ACTIVE ]',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: BrandColors.mediumGray,
                 
              ),
            ),
            
            const SizedBox(height: BrandTheme.spacing2),
            
            Expanded(
              child: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: accentColor,
                   
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
