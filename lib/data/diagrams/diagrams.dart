import 'package:flutter/material.dart';
import 'package:loopsbase/core/models/localized_text.dart';

class FactoryDiagramData {
  const FactoryDiagramData.en({
    this.client = "Client",
    this.creator = "Creator",
    this.factoryMethod = "factoryMethod()",
    this.productInterface = "Product",
    this.concreteCreator = "ConcreteCreator",
    this.concreteProduct = "ConcreteProduct",
  });

  const FactoryDiagramData.ar({
    this.client = "العميل",
    this.creator = "المُنشئ",
    this.factoryMethod = "factoryMethod()",
    this.productInterface = "المنتج",
    this.concreteCreator = "المُنشئ المحدد",
    this.concreteProduct = "المنتج المحدد",
  });

  final String client;
  final String creator;
  final String factoryMethod;
  final String productInterface;
  final String concreteCreator;
  final String concreteProduct;
}

extension ColorToHex on Color {
  /// Converts Color to CSS hex string (e.g., #FF0000)
  /// Uses toARGB32() to replace deprecated .value
  String toCssString() {
    // toARGB32() returns an int (AARRGGBB).
    // We convert to Hex, pad to 8 chars, and substring(2) to strip Alpha (AA)
    // leaving us with RRGGBB.
    return '#${toARGB32().toRadixString(16).padLeft(8, '0').substring(2)}';
  }
}

abstract class Diagrams {
  static String generateFactorySvg(String langCode, ColorScheme colors) {
    // 1. Get the text content
    final data = const LocV(
      ar: FactoryDiagramData.ar(),
      en: FactoryDiagramData.en(),
    )(langCode);

    final bool isRtl = langCode == 'ar';

    // 2. Extract Colors from the passed ColorScheme
    final String bgColor = colors.surface.toCssString();
    final String concreteColor = colors.surfaceContainerHighest.toCssString();
    final String lineColor = colors.onSurface.toCssString();
    final String concreteTextColor = colors.onSurfaceVariant.toCssString();

    // 3. Define Styles
    final String boxStyle =
        'fill="$bgColor" stroke="$lineColor" stroke-width="2"';
    final String concreteBoxStyle =
        'fill="$concreteColor" stroke="$lineColor" stroke-width="2"';

    // FIX: Added font-family="sans-serif".
    // Without this, SVGs often default to a font that does not support Arabic glyphs.
    // "sans-serif" triggers the system UI font fallback (like Arial, Roboto, or San Francisco)
    // which includes Arabic support.
    final String titleStyle =
        'font-family="sans-serif" font-size="16" font-weight="bold" fill="$lineColor" text-anchor="middle"';
    final String methodStyle =
        'font-family="sans-serif" font-size="14" fill="$lineColor" text-anchor="middle"';

    // Optional: Add interface specific style
    final String interfaceTagStyle =
        'font-family="sans-serif" font-size="12" fill="$lineColor" text-anchor="middle"';

    return '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="-5 -5 690 290" direction="${isRtl ? 'rtl' : 'ltr'}">
  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
  </defs>

  <!-- ROW 1: ABSTRACT / CREATOR -->

  <!-- Client Node -->
  <g transform="translate(0, 20)">
    <rect $boxStyle width="120" height="60" rx="5" />
    <text x="60" y="35" $titleStyle>${data.client}</text>
  </g>

  <!-- Creator Node -->
  <g transform="translate(220, 0)">
    <rect $boxStyle width="200" height="100" rx="5" />
    <text x="100" y="30" $titleStyle>${data.creator}</text>
    <line x1="0" y1="45" x2="200" y2="45" stroke="$lineColor" stroke-width="1" />
    <text x="100" y="75" $methodStyle>${data.factoryMethod}</text>
  </g>

  <!-- Product Interface Node -->
  <g transform="translate(500, 20)">
    <rect $boxStyle width="180" height="60" rx="5" />
    <text x="90" y="25" $interfaceTagStyle>&lt;&lt;Interface&gt;&gt;</text>
    <text x="90" y="45" $titleStyle>${data.productInterface}</text>
  </g>

  <!-- ROW 2: CONCRETE IMPLEMENTATIONS -->

  <!-- Concrete Creator -->
  <g transform="translate(220, 220)">
    <rect $concreteBoxStyle width="200" height="60" rx="5" />
    <text x="100" y="35" $titleStyle fill="$concreteTextColor">${data.concreteCreator}</text>
  </g>

  <!-- Concrete Product -->
  <g transform="translate(500, 220)">
    <rect $concreteBoxStyle width="180" height="60" rx="5" />
    <text x="90" y="35" $titleStyle fill="$concreteTextColor">${data.concreteProduct}</text>
  </g>

  <!-- CONNECTIONS -->
  
  <!-- Horizontal Solid Arrows -->
  <path d="M 120 50 L 220 50" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />
  <path d="M 420 50 L 500 50" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />
  
  <!-- Vertical Dashed Arrows -->
  <path d="M 320 100 L 320 210" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />
  <path d="M 590 80 L 590 210" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

</svg>
''';
  }
}
