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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  bool _showAppBar = false;

  @override
  void initState() {
    super.initState();
    NavigationService.setScrollController(_scrollController);
    
    _scrollController.addListener(() {
      final shouldShow = _scrollController.offset > 200; // Show after scrolling 200px
      if (shouldShow != _showAppBar) {
        setState(() {
          _showAppBar = shouldShow;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _showAppBar ? const PortfolioAppBar() : null,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            // Hero Section (no key needed as it's always at top)
            const HeroSection(),
            
            // About Section
            Container(
              key: NavigationService.getSectionKey('About'),
              child: const AboutSection(),
            ),
            
            // Skills Section
            Container(
              key: NavigationService.getSectionKey('Skills'),
              child: const SkillsSection(),
            ),
            
            // Projects Section
            Container(
              key: NavigationService.getSectionKey('Projects'),
              child: const ProjectsSection(),
            ),
            
            // Experience Section
            Container(
              key: NavigationService.getSectionKey('Experience'),
              child: const ExperienceSection(),
            ),
            
            // Contact Section
            Container(
              key: NavigationService.getSectionKey('Contact'),
              child: const ContactSection(),
            ),
            
            // Footer
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
