import 'package:flutter/material.dart';

enum ScreenSize { mobile, tablet, desktop }

ScreenSize screenSizeOf(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;

  if (width < 600) return ScreenSize.mobile;
  if (width < 1024) return ScreenSize.tablet;
  return ScreenSize.desktop;
}

bool isMobile(BuildContext context) =>
    screenSizeOf(context) == ScreenSize.mobile;

bool isTablet(BuildContext context) =>
    screenSizeOf(context) == ScreenSize.tablet;

bool isDesktop(BuildContext context) =>
    screenSizeOf(context) == ScreenSize.desktop;
