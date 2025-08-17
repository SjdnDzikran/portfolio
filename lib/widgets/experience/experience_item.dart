import 'package:flutter/material.dart';
import '../../constants/brand_theme.dart';
import '../terminal_section.dart';

class ExperienceItem extends StatelessWidget {
  final String title;
  final String company;
  final String period;
  final String description;
  final IconData icon;
  final Color accentColor;
  final bool isActive;

  const ExperienceItem({
    super.key,
    required this.title,
    required this.company,
    required this.period,
    required this.description,
    required this.icon,
    required this.accentColor,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: BrandTheme.spacing4),
      child: GridCard(
        backgroundColor: isActive ? BrandColors.baseDark : BrandColors.cleanWhite,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Timeline indicator
            _buildTimelineIndicator(),
            
            const SizedBox(width: BrandTheme.spacing4), // Increased from spacing3
            
            // Content
            Expanded(
              child: _buildContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineIndicator() {
    return Container(
      width: 60, // Increased from 50
      height: 60, // Increased from 50
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
        size: 30, // Increased from 24
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Status and period
        _buildStatusAndPeriod(),
        
        const SizedBox(height: BrandTheme.spacing2), // Increased from spacing1
        
        // Title and company
        _buildTitleAndCompany(),
        
        const SizedBox(height: BrandTheme.spacing3), // Increased from spacing2
        
        // Description
        _buildDescription(),
      ],
    );
  }

  Widget _buildStatusAndPeriod() {
    return Row(
      children: [
        Text(
          isActive ? '> ACTIVE ' : '> COMPLETED ',
          style: TextStyle(
            fontSize: 16, // Increased from 12
            fontWeight: FontWeight.bold,
            color: isActive ? BrandColors.brightGreen : BrandColors.mediumGray,
            fontFamily: 'monospace',
          ),
        ),
        Expanded(
          child: Text(
            '[ $period ]',
            style: TextStyle(
              fontSize: 14, // Increased from 10
              fontWeight: FontWeight.w400,
              color: isActive ? BrandColors.cream : BrandColors.mediumGray,
              fontFamily: 'monospace',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTitleAndCompany() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20, // Increased from 16
            fontWeight: FontWeight.bold,
            color: isActive ? BrandColors.cream : BrandColors.baseDark,
            fontFamily: 'monospace',
          ),
        ),
        
        const SizedBox(height: 4),
        
        Text(
          '@ $company',
          style: TextStyle(
            fontSize: 18, // Increased from 14
            fontWeight: FontWeight.w600,
            color: accentColor,
            fontFamily: 'monospace',
          ),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      description,
      style: TextStyle(
        fontSize: 16, // Increased from 12
        fontWeight: FontWeight.w400,
        color: isActive ? BrandColors.cream : BrandColors.baseDark,
        height: 1.6,
        fontFamily: 'monospace',
      ),
    );
  }
}
