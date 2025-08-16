import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

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
      child: Column(
        children: [
          // Section title
          Text(
            'Experience',
            style: TextStyle(
              fontSize: isDesktop ? 48 : (isTablet ? 40 : 32),
              fontWeight: FontWeight.w300,
              color: const Color(0xFF202124),
              letterSpacing: -1.0,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 48),
          
          // Experience timeline
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              children: [
                _buildExperienceItem(
                  'Senior Mobile Developer',
                  'Tech Solutions Inc.',
                  '2023 - Present',
                  'Leading mobile app development projects using Flutter and React Native. '
                  'Mentoring junior developers and establishing best practices for cross-platform development.',
                  Icons.smartphone,
                ),
                _buildExperienceItem(
                  'Blockchain Developer',
                  'CryptoVentures',
                  '2022 - 2023',
                  'Developed smart contracts and DeFi protocols on Ethereum blockchain. '
                  'Built decentralized applications with focus on security and gas optimization.',
                  Icons.link,
                ),
                _buildExperienceItem(
                  'Full Stack Developer',
                  'Digital Innovations',
                  '2021 - 2022',
                  'Created web and mobile applications using modern frameworks. '
                  'Collaborated with design teams to implement pixel-perfect user interfaces.',
                  Icons.web,
                ),
                _buildExperienceItem(
                  'Computer Science',
                  'University Name',
                  '2017 - 2021',
                  'Bachelor\'s degree in Computer Science with focus on software engineering and distributed systems.',
                  Icons.school,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildExperienceItem(String title, String company, String period, String description, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Timeline icon
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF4285F4),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
          
          const SizedBox(width: 24),
          
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and period
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF202124),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            company,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4285F4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F9FA),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: const Color(0xFFE8EAED),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        period,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5F6368),
                        ),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 12),
                
                // Description
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5F6368),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
