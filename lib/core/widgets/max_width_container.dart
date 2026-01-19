import 'package:flutter/material.dart';
import '../responsive/breakpoints.dart';

class MaxWidthContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const MaxWidthContainer({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    final p = padding ??
        EdgeInsets.symmetric(horizontal: pageHorizontalPadding(context));

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxContentWidth(context)),
        child: Padding(padding: p, child: child),
      ),
    );
  }
}
