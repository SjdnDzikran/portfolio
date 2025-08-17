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
    final key = _sectionKeys[section];
    final context = key?.currentContext;
    
    if (context != null && _scrollController != null) {
      final RenderObject? renderObject = context.findRenderObject();
      if (renderObject is RenderBox) {
        final position = renderObject.localToGlobal(Offset.zero);
        // Calculate offset considering AppBar height and current scroll position
        final offset = position.dy + _scrollController!.offset - 100; // 100 for AppBar height + padding
        
        _scrollController!.animateTo(
          offset.clamp(0.0, _scrollController!.position.maxScrollExtent),
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
      }
    }
  }
}
