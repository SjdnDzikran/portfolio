import 'package:flutter/material.dart';
import '../../constants/brand_theme.dart';

class ExperienceData {
  final String title;
  final String company;
  final String period;
  final String description;
  final IconData icon;
  final Color accentColor;
  final bool isActive;

  const ExperienceData({
    required this.title,
    required this.company,
    required this.period,
    required this.description,
    required this.icon,
    required this.accentColor,
    required this.isActive,
  });

  // Static data for experiences
  static List<ExperienceData> get experiences => [
    ExperienceData(
      title: 'MOBILE_APPS_LEAD',
      company: 'SUMBU_LABS',
      period: 'AUG_2025_-_PRESENT',
      description: 'Leading mobile development initiatives for client projects. Driving technical decisions, code quality standards, and mentoring junior engineers.',
      icon: Icons.smartphone,
      accentColor: BrandColors.brightGreen,
      isActive: true,
    ),
    ExperienceData(
      title: 'SOFTWARE_DEVELOPER_INTERN',
      company: 'LEN_LOGISTICS',
      period: 'JAN_2025_-_PRESENT',
      description: 'Built ERP system backend with .NET and frontend with Blazor. Developing Transport Management System (TMS) mobile app with Flutter.',
      icon: Icons.business,
      accentColor: BrandColors.purple,
      isActive: true,
    ),
    ExperienceData(
      title: 'MOBILE_APPS_LEAD',
      company: 'OMAHTI_(IT_STUDENT_ORG_UGM)',
      period: 'DEC_2024_-_PRESENT',
      description: 'Led the mobile apps division, mentoring and training new members in Flutter. Organized multiple workshops and code labs.',
      icon: Icons.group,
      accentColor: BrandColors.softGreen,
      isActive: true,
    ),
    ExperienceData(
      title: 'JUNIOR_MOBILE_APP_DEVELOPER',
      company: 'OMAHTI',
      period: 'JUN_2024_-_DEC_2024',
      description: 'Assisted in developing mobile apps using Flutter. Contributed to building features and improving development workflow.',
      icon: Icons.phone_android,
      accentColor: BrandColors.cream,
      isActive: false,
    ),
    ExperienceData(
      title: 'COMPUTER_SCIENCE_STUDENT',
      company: 'UNIVERSITAS_GADJAH_MADA',
      period: '2023_-_2027_(EXPECTED)',
      description: 'Bachelor of Computer Science with focus on software engineering and mobile development.',
      icon: Icons.school,
      accentColor: BrandColors.mediumGray,
      isActive: true,
    ),
  ];
}
