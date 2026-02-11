import 'package:flutter/material.dart';

/// Design Layouts
abstract class DL {
  // Edge Insets
  static const EdgeInsets pagePadding = .all(16);

  static const EdgeInsets listPadding = .all(16);
  static const EdgeInsets inListCardPadding = .all(16);
  static const EdgeInsets inListCardMargin = .all(16);

  // Radius
  static const BorderRadius inListCardBorderRadius = .all(.circular(16));

  // Separator
  static const double listSeparatorHeight = 16;
  static const double compactSeparatorHeight = 8;
}
