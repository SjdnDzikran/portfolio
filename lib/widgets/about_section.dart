import 'package:flutter/material.dart';
import 'package:portfolio/constants/brand_theme.dart';
import 'package:portfolio/widgets/terminal_section.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery for responsive layout
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;

    return TerminalSection(
      title: 'ABOUT_ME',
      child: Flex(
        direction: isDesktop ? Axis.horizontal : Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image placeholder on the left (for desktop) or top (for mobile)
          Expanded(
            flex: isDesktop ? 2 : 0,
            child: Center(
              child: Container(
                width: isDesktop ? 280 : 200,
                height: isDesktop ? 280 : 200,
                decoration: BoxDecoration(
                  border: Border.all(color: BrandColors.baseDark, width: 2),
                  color: BrandColors.purple.withAlpha((0.1 * 255).round()),
                ),
                child: const Center(
                  child: Icon(
                    Icons.person_outline_rounded,
                    size: 100,
                    color: BrandColors.baseDark,
                  ),
                ),
              ),
            ),
          ),
          
          // Spacing between sections
          isDesktop 
            ? const SizedBox(width: BrandTheme.spacing6)
            : const SizedBox(height: BrandTheme.spacing4),
          
          // Text content on the right (for desktop) or bottom (for mobile)
          Expanded(
            flex: isDesktop ? 3 : 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello, I'm Dzikran Azka Sajidan.",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: BrandTheme.spacing2),
                Text(
                  "A passionate Software Engineer specializing in building robust and scalable mobile applications with Flutter. My journey in tech is driven by a love for problem-solving and creating intuitive, user-centric experiences.",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: BrandTheme.spacing2),
                Text(
                  "With experience in both frontend and backend development using technologies like .NET and Blazor, I bring a holistic perspective to my projects, ensuring seamless integration and high-quality code from end to end. I thrive in collaborative environments and am always eager to learn and adapt to new challenges.",
                   style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}