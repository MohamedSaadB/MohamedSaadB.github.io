import 'dart:ui';
import 'package:flutter/material.dart';

class HoverGlassCard extends StatefulWidget {
  const HoverGlassCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(20),
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  State<HoverGlassCard> createState() => _HoverGlassCardState();
}

class _HoverGlassCardState extends State<HoverGlassCard> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        transform: Matrix4.identity()..translate(0.0, _hover ? -6.0 : 0.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: cs.outlineVariant.withOpacity(_hover ? 0.55 : 0.25),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: _hover ? 28 : 18,
              spreadRadius: 0,
              offset: const Offset(0, 14),
              color: Colors.black.withOpacity(_hover ? 0.18 : 0.12),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
            child: Container(
              padding: widget.padding,
              color: cs.surface.withOpacity(0.65),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
