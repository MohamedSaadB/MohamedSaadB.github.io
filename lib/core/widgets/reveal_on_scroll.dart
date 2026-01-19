import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visibility_detector/visibility_detector.dart';

class RevealOnScroll extends StatefulWidget {
  const RevealOnScroll({
    super.key,
    required this.child,
    this.delay = Duration.zero,
  });

  final Widget child;
  final Duration delay;

  @override
  State<RevealOnScroll> createState() => _RevealOnScrollState();
}

class _RevealOnScrollState extends State<RevealOnScroll> {
  bool _shown = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: widget.key ?? UniqueKey(),
      onVisibilityChanged: (info) {
        if (!_shown && info.visibleFraction > 0.12) {
          setState(() => _shown = true);
        }
      },
      child: _shown
          ? widget.child
          .animate(delay: widget.delay)
          .fadeIn(duration: 450.ms)
          .moveY(begin: 18, end: 0, duration: 450.ms, curve: Curves.easeOutCubic)
          .blurXY(begin: 8, end: 0, duration: 450.ms)
          : Opacity(opacity: 0, child: widget.child),
    );
  }
}
