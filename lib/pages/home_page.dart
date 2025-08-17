import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/hero_section.dart';
import '../widgets/about_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/experience_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer_widget.dart';
import '../utils/navigation_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const PortfolioSliverAppBar(),
        ],
        body: CustomScrollView(
          slivers: [
            // Hero Section (no key needed as it's always at top)
            const SliverToBoxAdapter(child: HeroSection()),
            
            // About Section
            SliverToBoxAdapter(
              key: NavigationService.getSectionKey('About'),
              child: const AboutSection(),
            ),
            
            // Skills Section
            SliverToBoxAdapter(
              key: NavigationService.getSectionKey('Skills'),
              child: const SkillsSection(),
            ),
            
            // Projects Section
            SliverToBoxAdapter(
              key: NavigationService.getSectionKey('Projects'),
              child: const ProjectsSection(),
            ),
            
            // Experience Section
            SliverToBoxAdapter(
              key: NavigationService.getSectionKey('Experience'),
              child: const ExperienceSection(),
            ),
            
            // Contact Section
            SliverToBoxAdapter(
              key: NavigationService.getSectionKey('Contact'),
              child: const ContactSection(),
            ),
            
            // Footer
            const SliverToBoxAdapter(child: FooterWidget()),
          ],
        ),
      ),
    );
  }
}
