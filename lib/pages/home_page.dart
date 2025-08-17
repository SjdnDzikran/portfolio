import 'package:flutter/material.dart';
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
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            shadowColor: Colors.grey.withAlpha(25),
            toolbarHeight: 80,
            automaticallyImplyLeading: false,
            floating: true, // Shows when scrolling up
            snap: true,     // Snaps to show/hide
            pinned: false,  // Doesn't stay pinned at top
            title: Text(
              'Dzikran Azka Sajidan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF202124),
              ),
            ),
            actions: [
              // Navigation items
              _buildNavItem('About'),
              _buildNavItem('Projects'),
              _buildNavItem('Skills'),
              _buildNavItem('Experience'),
              _buildNavItem('Contact'),
              const SizedBox(width: 24), // Right padding
            ],
          ),
        ],
        body: CustomScrollView(
          slivers: [
            // Sections with lazy loading using SliverChildBuilderDelegate
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _sections[index],
                childCount: _sections.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () {
          // TODO: Implement navigation
        },
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          overlayColor: Colors.transparent,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF5F6368),
          ),
        ),
      ),
    );
  }
}
