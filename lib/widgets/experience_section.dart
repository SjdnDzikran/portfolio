import 'package:flutter/material.dart';
import '../constants/brand_theme.dart';
import 'terminal_section.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TerminalSection(
      title: 'Experience',
      backgroundColor: BrandColors.cleanWhite,
      child: Column(
        children: [
          _buildExperienceItem(
            'MOBILE_APPS_LEAD',
            'SUMBU_LABS',
            'AUG_2025_-_PRESENT',
            'Leading mobile development initiatives for client projects. Driving technical decisions, code quality standards, and mentoring junior engineers.',
            Icons.smartphone,
            BrandColors.brightGreen,
            true, // Current position
          ),
          _buildExperienceItem(
            'SOFTWARE_DEVELOPER_INTERN',
            'LEN_LOGISTICS',
            'JAN_2025_-_PRESENT',
            'Built ERP system backend with .NET and frontend with Blazor. Developing Transport Management System (TMS) mobile app with Flutter.',
            Icons.business,
            BrandColors.purple,
            true, // Current position
          ),
          _buildExperienceItem(
            'MOBILE_APPS_LEAD',
            'OMAHTI_(IT_STUDENT_ORG_UGM)',
            'DEC_2024_-_PRESENT',
            'Led the mobile apps division, mentoring and training new members in Flutter. Organized multiple workshops and code labs.',
            Icons.group,
            BrandColors.softGreen,
            true, // Current position
          ),
          _buildExperienceItem(
            'JUNIOR_MOBILE_APP_DEVELOPER',
            'OMAHTI',
            'JUN_2024_-_DEC_2024',
            'Assisted in developing mobile apps using Flutter. Contributed to building features and improving development workflow.',
            Icons.phone_android,
            BrandColors.cream,
            false,
          ),
          _buildExperienceItem(
            'COMPUTER_SCIENCE_STUDENT',
            'UNIVERSITAS_GADJAH_MADA',
            '2023_-_2026_(EXPECTED)',
            'Bachelor of Computer Science with focus on software engineering and mobile development.',
            Icons.school,
            BrandColors.mediumGray,
            false,
          ),
        ],
      ),
    );
  }
  
  Widget _buildExperienceItem(
    String title, 
    String company, 
    String period, 
    String description, 
    IconData icon, 
    Color accentColor,
    bool isActive,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: BrandTheme.spacing4),
      child: GridCard(
        backgroundColor: isActive ? BrandColors.baseDark : BrandColors.cleanWhite,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Timeline indicator
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: isActive ? accentColor : BrandColors.mediumGray,
                border: Border.all(
                  color: isActive ? BrandColors.brightGreen : BrandColors.baseDark,
                  width: 2,
                ),
                borderRadius: BorderRadius.zero,
              ),
              child: Icon(
                icon,
                color: isActive ? BrandColors.baseDark : BrandColors.cleanWhite,
                size: 24,
              ),
            ),
            
            const SizedBox(width: BrandTheme.spacing3),
            
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Status and period
                  Row(
                    children: [
                      Text(
                        isActive ? '> ACTIVE ' : '> COMPLETED ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: isActive ? BrandColors.brightGreen : BrandColors.mediumGray,
                          fontFamily: 'monospace',
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '[ $period ]',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: isActive ? BrandColors.cream : BrandColors.mediumGray,
                            fontFamily: 'monospace',
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: BrandTheme.spacing1),
                  
                  // Title and company
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isActive ? BrandColors.cream : BrandColors.baseDark,
                      fontFamily: 'monospace',
                    ),
                  ),
                  
                  const SizedBox(height: 4),
                  
                  Text(
                    '@ $company',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: accentColor,
                      fontFamily: 'monospace',
                    ),
                  ),
                  
                  const SizedBox(height: BrandTheme.spacing2),
                  
                  // Description
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: isActive ? BrandColors.cream : BrandColors.baseDark,
                      height: 1.6,
                      fontFamily: 'monospace',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
