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
                  'Mobile Apps Lead',
                  'Sumbu Labs',
                  'Aug 2025 - Present',
                  'Leading mobile development initiatives for client projects. '
                  'Driving technical decisions, code quality standards, and mentoring junior engineers.',
                  Icons.smartphone,
                ),
                _buildExperienceItem(
                  'Software Developer (Intern)',
                  'LEN Logistics',
                  'Jan 2025 - Present',
                  'Built ERP system backend with .NET and frontend with Blazor. '
                  'Developing Transport Management System (TMS) mobile app with Flutter for courier operations.',
                  Icons.business,
                ),
                _buildExperienceItem(
                  'Mobile Apps Lead',
                  'OmahTI (IT Student Org, UGM)',
                  'Dec 2024 - Present',
                  'Led the mobile apps division, mentoring and training new members in Flutter. '
                  'Organized multiple workshops and code labs for the community.',
                  Icons.group,
                ),
                _buildExperienceItem(
                  'Junior Mobile App Developer',
                  'OmahTI',
                  'Jun 2024 - Dec 2024',
                  'Assisted in developing mobile apps using Flutter. '
                  'Contributed to building features and improving development workflow.',
                  Icons.phone_android,
                ),
                _buildExperienceItem(
                  'Computer Science Student',
                  'Universitas Gadjah Mada',
                  '2023 - 2026 (Expected)',
                  'Bachelor of Computer Science with focus on software engineering and mobile development.',
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
