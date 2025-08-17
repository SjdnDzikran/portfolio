import 'package:flutter/material.dart';
import 'package:portfolio/widgets/header_widget.dart';
import 'package:portfolio/widgets/hero_section.dart';
import 'package:portfolio/widgets/about_section.dart';
import 'package:portfolio/widgets/skills_section.dart';
import 'package:portfolio/widgets/projects_section.dart';
import 'package:portfolio/widgets/experience_section.dart';
import 'package:portfolio/widgets/contact_section.dart';
import 'package:portfolio/widgets/footer_widget.dart';
import 'package:portfolio/utils/navigation_service.dart';
import 'package:portfolio/constants/brand_theme.dart';

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
      backgroundColor: BrandColors.manelaLight,
      appBar: _showAppBar ? const PortfolioAppBar() : null,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            // Hero Section (no key needed as it's always at top)
            HeroSection(),
            
            // About Section
            Container(
              key: NavigationService.getSectionKey('About'),
              child: AboutSection(),
            ),
            
            // Skills Section
            Container(
              key: NavigationService.getSectionKey('Skills'),
              child: SkillsSection(),
            ),
            
            // Projects Section
            Container(
              key: NavigationService.getSectionKey('Projects'),
              child: ProjectsSection(),
            ),
            
            // Experience Section
            Container(
              key: NavigationService.getSectionKey('Experience'),
              child: ExperienceSection(),
            ),
            
            // Contact Section
            Container(
              key: NavigationService.getSectionKey('Contact'),
              child: ContactSection(),
            ),
            
            // Footer
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
