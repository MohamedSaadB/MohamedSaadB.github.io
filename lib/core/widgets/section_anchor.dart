import 'package:flutter/material.dart';

class SectionAnchor extends StatelessWidget {
  final GlobalKey keyRef;
  final Widget child;

  const SectionAnchor({
    super.key,
    required this.keyRef,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => Container(key: keyRef, child: child);
}
