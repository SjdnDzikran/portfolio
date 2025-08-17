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

  @override
  void initState() {
    super.initState();
    NavigationService.setScrollController(_scrollController);
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
      body: CustomScrollView(
        controller: _scrollController,
        // Increase cache extent to ensure sections are rendered for navigation
        cacheExtent: 2000, // This ensures sections are rendered even when off-screen
        slivers: [
          // AppBar that hides on scroll down and shows on scroll up
          const PortfolioSliverAppBar(),
          
          // Main content
          SliverList(
            delegate: SliverChildListDelegate([
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
            ]),
          ),
        ],
      ),
    );
  }
}
