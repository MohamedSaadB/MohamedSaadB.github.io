import 'package:flutter/material.dart';

enum Breakpoint { xs, sm, md, lg, xl }

Breakpoint breakpointOf(BuildContext context) {
  final w = MediaQuery.sizeOf(context).width;
  if (w < 480) return Breakpoint.xs;
  if (w < 768) return Breakpoint.sm;
  if (w < 1024) return Breakpoint.md;
  if (w < 1280) return Breakpoint.lg;
  return Breakpoint.xl;
}

double pageHorizontalPadding(BuildContext context) {
  switch (breakpointOf(context)) {
    case Breakpoint.xs:
      return 16;
    case Breakpoint.sm:
      return 18;
    case Breakpoint.md:
      return 22;
    case Breakpoint.lg:
      return 28;
    case Breakpoint.xl:
      return 28;
  }
}

double maxContentWidth(BuildContext context) {
  switch (breakpointOf(context)) {
    case Breakpoint.xs:
    case Breakpoint.sm:
      return 720;
    case Breakpoint.md:
      return 980;
    case Breakpoint.lg:
      return 1120;
    case Breakpoint.xl:
      return 1200;
  }
}

int columnsForGrid(BuildContext context, {int max = 3}) {
  final bp = breakpointOf(context);
  if (bp == Breakpoint.xs) return 1;
  if (bp == Breakpoint.sm) return 1;
  if (bp == Breakpoint.md) return max >= 2 ? 2 : 1;
  return max; // lg/xl
}

double heroTitleSize(BuildContext context) {
  switch (breakpointOf(context)) {
    case Breakpoint.xs:
      return 34;
    case Breakpoint.sm:
      return 40;
    case Breakpoint.md:
      return 48;
    case Breakpoint.lg:
      return 54;
    case Breakpoint.xl:
      return 58;
  }
}
