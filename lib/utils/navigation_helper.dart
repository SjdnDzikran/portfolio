import 'package:flutter/material.dart';

class ScrollController {
  static final GlobalKey aboutKey = GlobalKey();
  static final GlobalKey projectsKey = GlobalKey();
  static final GlobalKey skillsKey = GlobalKey();
  static final GlobalKey experienceKey = GlobalKey();
  static final GlobalKey contactKey = GlobalKey();

  static void scrollToSection(GlobalKey key) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  static void scrollToTop() {
    // This will be implemented when we add the scroll controller to the main page
  }
}

class NavigationHelper {
  static void navigateToSection(String section) {
    switch (section.toLowerCase()) {
      case 'about':
        ScrollController.scrollToSection(ScrollController.aboutKey);
        break;
      case 'projects':
        ScrollController.scrollToSection(ScrollController.projectsKey);
        break;
      case 'skills':
        ScrollController.scrollToSection(ScrollController.skillsKey);
        break;
      case 'experience':
        ScrollController.scrollToSection(ScrollController.experienceKey);
        break;
      case 'contact':
        ScrollController.scrollToSection(ScrollController.contactKey);
        break;
    }
  }
}
