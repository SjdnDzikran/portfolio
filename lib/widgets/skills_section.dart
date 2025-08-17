import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

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
            'Skills & Technologies',
            style: TextStyle(
              fontSize: isDesktop ? 48 : (isTablet ? 40 : 32),
              fontWeight: FontWeight.w300,
              color: const Color(0xFF202124),
              letterSpacing: -1.0,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 48),
          
          // Skills grid
          Container(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: isDesktop ? 2 : 1,
              mainAxisSpacing: 32,
              crossAxisSpacing: 32,
              childAspectRatio: isDesktop ? 2.5 : 1.8,
              children: [
                _buildSkillCategory(
                  'Mobile Development',
                  Icons.phone_android,
                  ['Flutter', 'Dart', 'React Native', 'iOS', 'Android', 'Firebase'],
                ),
                _buildSkillCategory(
                  'Blockchain',
                  Icons.link,
                  ['Solidity', 'Smart Contracts', 'Web3', 'DeFi', 'Ethereum', 'dApps'],
                ),
                _buildSkillCategory(
                  'Programming Languages',
                  Icons.code,
                  ['Dart', 'JavaScript', 'TypeScript', 'Python', 'Solidity', 'Java'],
                ),
                _buildSkillCategory(
                  'Tools & Platforms',
                  Icons.build,
                  ['Git', 'Docker', 'VS Code', 'Firebase', 'Node.js', 'MongoDB'],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildSkillCategory(String title, IconData icon, List<String> skills) {
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
          // Category header
          Row(
            children: [
              Icon(
                icon,
                color: const Color(0xFF4285F4),
                size: 28,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF202124),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 20),
          
          // Skills
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: skills.map((skill) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFF8F9FA),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFFE8EAED),
                  width: 1,
                ),
              ),
              child: Text(
                skill,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF5F6368),
                ),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
}
