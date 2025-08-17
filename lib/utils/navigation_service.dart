import 'package:flutter/material.dart';

class NavigationService {
  static final Map<String, GlobalKey> _sectionKeys = {
    'About': GlobalKey(),
    'Skills': GlobalKey(),
    'Projects': GlobalKey(),
    'Experience': GlobalKey(),
    'Contact': GlobalKey(),
  };

  static GlobalKey getSectionKey(String section) {
    return _sectionKeys[section] ?? GlobalKey();
  }

  static void scrollToSection(String section) {
    final key = _sectionKeys[section];
    final context = key?.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        alignment: 0.0, // Scroll to top of the section
      );
    }
  }
}
