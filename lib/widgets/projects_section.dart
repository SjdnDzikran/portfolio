import 'package:flutter/material.dart';
import '../constants/brand_theme.dart';
import 'terminal_section.dart';
import 'buttons/text_icon_button.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    
    return TerminalSection(
      title: 'Featured Projects',
      backgroundColor: BrandColors.cream,
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: isDesktop ? 2 : 1,
        mainAxisSpacing: BrandTheme.spacing4,
        crossAxisSpacing: BrandTheme.spacing4,
        childAspectRatio: isDesktop ? 1.0 : 0.8,
        children: [
          _buildProjectCard(
            'INDONESIA_CAR-DANO',
            'Enterprise mobile application for on-site vehicle inspectors. Features offline-first capabilities, data sync, and media capture.',
            ['FLUTTER', 'DART', 'OFFLINE_FIRST', 'REST_APIS'],
            Icons.directions_car,
            BrandColors.brightGreen,
          ),
          _buildProjectCard(
            'TRANSPORT_MANAGEMENT_SYSTEM',
            'Mobile app digitizing last-mile courier operations with authentication, pickup & delivery modules, barcode scanning.',
            ['FLUTTER', 'ASP.NET_CORE', 'BARCODE_SCANNING', 'REAL_TIME_TRACKING'],
            Icons.local_shipping,
            BrandColors.purple,
          ),
          _buildProjectCard(
            'ERP_SYSTEM',
            'Complete ERP system with .NET backend and Blazor frontend, featuring comprehensive business process management.',
            ['ASP.NET_CORE', 'BLAZOR', 'SQL_SERVER', 'C#'],
            Icons.business,
            BrandColors.softGreen,
          ),
          _buildProjectCard(
            'FLUTTER_WORKSHOPS',
            'Organized and led multiple Flutter workshops and code labs, training new developers in UI development and state management.',
            ['FLUTTER', 'TEACHING', 'MENTORING', 'WORKSHOP_FACILITATION'],
            Icons.school,
            BrandColors.cream,
          ),
        ],
      ),
    );
  }
  
  Widget _buildProjectCard(String title, String description, List<String> technologies, IconData icon, Color accentColor) {
    return GridCard(
      backgroundColor: BrandColors.cleanWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Project header
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: BrandColors.baseDark,
                  border: Border.all(
                    color: accentColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.zero,
                ),
                child: Icon(
                  icon,
                  color: accentColor,
                  size: 20,
                ),
              ),
              const SizedBox(width: BrandTheme.spacing2),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '> PROJECT_${title.replaceAll(' ', '_')}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: BrandColors.baseDark,
                         
                      ),
                    ),
                    Text(
                      '[ STATUS: DEPLOYED ]',
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
          
          const SizedBox(height: BrandTheme.spacing2),
          
          // Description
          Expanded(
            child: Text(
              description,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: BrandColors.baseDark,
                height: 1.6,
                 
              ),
            ),
          ),
          
          const SizedBox(height: BrandTheme.spacing2),
          
          // Technologies as terminal output
          Text(
            '> STACK:',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: BrandColors.brightGreen,
               
            ),
          ),
          const SizedBox(height: 4),
          ...technologies.map((tech) => Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(
              '  • $tech',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: accentColor,
                 
              ),
            ),
          )),
          
          const SizedBox(height: BrandTheme.spacing2),
          
          // Action buttons
          Row(
            children: [
              TextIconButton(
                text: 'View Demo',
                icon: Icons.launch,
                onPressed: () {
                  // TODO: Open project demo
                },
                textColor: accentColor,
                iconColor: accentColor,
              ),
              const SizedBox(width: BrandTheme.spacing2),
              TextIconButton(
                text: 'Code',
                icon: Icons.code,
                onPressed: () {
                  // TODO: Open GitHub
                },
                textColor: BrandColors.brightGreen,
                iconColor: BrandColors.brightGreen,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
