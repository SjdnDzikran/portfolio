import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/hero_section.dart';
import '../widgets/about_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/experience_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Define sections for lazy loading
  static const List<Widget> _sections = [
    HeroSection(),
    AboutSection(),
    SkillsSection(),
    ProjectsSection(),
    ExperienceSection(),
    ContactSection(),
    FooterWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Header as SliverToBoxAdapter
          const SliverToBoxAdapter(
            child: HeaderWidget(),
          ),
          
          // Sections with lazy loading using SliverChildBuilderDelegate
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _sections[index],
              childCount: _sections.length,
            ),
          ),
        ],
      ),
    );
  }
}
