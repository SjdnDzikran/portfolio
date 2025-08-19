import 'package:flutter/material.dart';

class NavigationService {
  static ScrollController? _scrollController;
  
  static final Map<String, GlobalKey> _sectionKeys = {
    'About': GlobalKey(),
    'Skills': GlobalKey(),
    'Projects': GlobalKey(),
    'Experience': GlobalKey(),
    'Contact': GlobalKey(),
  };

  static void setScrollController(ScrollController controller) {
    _scrollController = controller;
  }

  static GlobalKey getSectionKey(String section) {
    return _sectionKeys[section] ?? GlobalKey();
  }

  static void scrollToSection(String section) {
    if (_scrollController == null) return;

    final key = _sectionKeys[section];
    final context = key?.currentContext;
    
    if (context != null) {
      // If context is available, use ensureVisible (most accurate)
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        alignment: 0.0,
      );
    } else {
      // If context not available, estimate position based on section order
      final sectionOrder = ['About', 'Skills', 'Projects', 'Experience', 'Contact'];
      final sectionIndex = sectionOrder.indexOf(section);
      
      if (sectionIndex >= 0) {
        // Estimate scroll position based on section index
        // Hero section ~600px, each section ~800px on average
        double estimatedOffset = 600.0 + (sectionIndex * 800.0);
        
        // Account for AppBar height
        estimatedOffset -= 100;
        
        _scrollController!.animateTo(
          estimatedOffset.clamp(0.0, _scrollController!.position.maxScrollExtent),
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
        
        // After scrolling, try to get the exact position if context becomes available
        Future.delayed(const Duration(milliseconds: 900), () {
          final retryContext = key?.currentContext;
          if (retryContext != null) {
            Scrollable.ensureVisible(
              retryContext,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              alignment: 0.0,
            );
          }
        });
      }
    }
  }

  static void scrollToTop() {
    if (_scrollController != null) {
      _scrollController!.animateTo(
        0.0,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }
}
