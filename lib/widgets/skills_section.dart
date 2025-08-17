import 'package:flutter/material.dart';
import '../constants/brand_theme.dart';
import 'terminal_section.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    
    return TerminalSection(
      title: 'Skills & Technologies',
      backgroundColor: BrandColors.baseDark,
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: isDesktop ? 2 : 1,
        mainAxisSpacing: BrandTheme.spacing4,
        crossAxisSpacing: BrandTheme.spacing4,
        childAspectRatio: isDesktop ? 2.0 : 1.5,
        children: [
          _buildSkillCategory(
            'MOBILE_DEVELOPMENT',
            Icons.terminal,
            ['FLUTTER', 'DART', 'STATE_MANAGEMENT', 'REST_APIS', 'OFFLINE_FIRST_APPS', 'BARCODE_SCANNING'],
            BrandColors.cream,
          ),
          _buildSkillCategory(
            'BACKEND_&_WEB',
            Icons.web,
            ['ASP.NET_CORE', 'BLAZOR', 'C#', 'MICROSOFT_SQL_SERVER', 'JAVASCRIPT', 'NEXT.JS'],
            BrandColors.softGreen,
          ),
          _buildSkillCategory(
            'PROGRAMMING_LANGUAGES',
            Icons.code,
            ['DART', 'C#', 'JAVASCRIPT', 'TYPESCRIPT', 'REACT.JS'],
            BrandColors.purple,
          ),
          _buildSkillCategory(
            'TOOLS_&_PRACTICES',
            Icons.build,
            ['GIT', 'AGILE', 'CODE_QUALITY', 'TEAM_LEADERSHIP', 'MENTORING'],
            BrandColors.brightGreen,
          ),
        ],
      ),
    );
  }
  
  Widget _buildSkillCategory(String title, IconData icon, List<String> skills, Color accentColor) {
    return GridCard(
      backgroundColor: BrandColors.cleanWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Category header
          Row(
            children: [
              Text(
                '> ',
                style: TextStyle(
                  fontSize: 16,
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: BrandColors.baseDark,
                     
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: BrandTheme.spacing1),
          
          // Status line
          Text(
            '[ LOADED ] [ ${skills.length}_MODULES ]',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: BrandColors.mediumGray,
              letterSpacing: 1.0,
               
            ),
          ),
          
          const SizedBox(height: BrandTheme.spacing2),
          
          // Skills as terminal output
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: skills.map((skill) => Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    children: [
                      Text(
                        '• ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: accentColor,
                           
                        ),
                      ),
                      Expanded(
                        child: Text(
                          skill,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: BrandColors.baseDark,
                             
                          ),
                        ),
                      ),
                    ],
                  ),
                )).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
