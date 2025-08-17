import 'package:flutter/material.dart';
import 'package:portfolio/widgets/buttons/text_icon_button.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
            'Featured Projects',
            style: TextStyle(
              fontSize: isDesktop ? 48 : (isTablet ? 40 : 32),
              fontWeight: FontWeight.w300,
              color: const Color(0xFF202124),
              letterSpacing: -1.0,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 48),
          
          // Projects grid
          Container(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: isDesktop ? 2 : 1,
              mainAxisSpacing: 32,
              crossAxisSpacing: 32,
              childAspectRatio: isDesktop ? 1.3 : 0.8,
              children: [
                _buildProjectCard(
                  'Indonesia CAR-dano',
                  'Enterprise mobile application for on-site vehicle inspectors. Features offline-first capabilities, data sync, and media capture. Architected for scalability and long-term business alignment.',
                  ['Flutter', 'Dart', 'Offline-first', 'REST APIs'],
                  Icons.directions_car,
                ),
                _buildProjectCard(
                  'Transport Management System',
                  'Mobile app digitizing last-mile courier operations with authentication, pickup & delivery modules, barcode scanning, and real-time shipment tracking.',
                  ['Flutter', 'ASP.NET Core', 'Barcode scanning', 'Real-time tracking'],
                  Icons.local_shipping,
                ),
                _buildProjectCard(
                  'ERP System',
                  'Complete ERP system with .NET backend and Blazor frontend, featuring comprehensive business process management and data visualization.',
                  ['ASP.NET Core', 'Blazor', 'SQL Server', 'C#'],
                  Icons.business,
                ),
                _buildProjectCard(
                  'Flutter Workshops',
                  'Organized and led multiple Flutter workshops and code labs, training new developers in UI development, state management, and API integration.',
                  ['Flutter', 'Teaching', 'Mentoring', 'Workshop facilitation'],
                  Icons.school,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildProjectCard(String title, String description, List<String> technologies, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFE8EAED),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha((0.05 * 255).round()),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Project icon
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFF4285F4).withAlpha((0.1 * 255).round()),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF4285F4),
              size: 32,
            ),
          ),
          
          const SizedBox(height: 20),
          
          // Project title
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF202124),
            ),
          ),
          
          const SizedBox(height: 12),
          
          // Project description
          Expanded(
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF5F6368),
                height: 1.5,
              ),
            ),
          ),
          
          const SizedBox(height: 20),
          
          // Technologies
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: technologies.map((tech) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFF4285F4).withAlpha((0.1 * 255).round()),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                tech,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF4285F4),
                ),
              ),
            )).toList(),
          ),
          
          const SizedBox(height: 20),
          
          // Action buttons
          Row(
            children: [
              TextIconButton(
                text: 'View Demo',
                icon: Icons.launch,
                onPressed: () {
                  // TODO: Open project demo
                },
              ),
              const SizedBox(width: 16),
              TextIconButton(
                text: 'Code',
                icon: Icons.code,
                onPressed: () {
                  // TODO: Open GitHub
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
