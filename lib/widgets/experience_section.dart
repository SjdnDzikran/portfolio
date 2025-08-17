import 'package:flutter/material.dart';
import '../constants/brand_theme.dart';
import 'terminal_section.dart';
import 'experience/experience_data.dart';
import 'experience/experience_item.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TerminalSection(
      title: 'Experience',
      backgroundColor: BrandColors.cleanWhite,
      child: Column(
        children: ExperienceData.experiences
            .map((experience) => ExperienceItem(
                  title: experience.title,
                  company: experience.company,
                  period: experience.period,
                  description: experience.description,
                  icon: experience.icon,
                  accentColor: experience.accentColor,
                  isActive: experience.isActive,
                ))
            .toList(),
      ),
    );
  }
}
