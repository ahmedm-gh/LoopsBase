import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:tuts/core/models/code_block.dart";
import "package:url_launcher/url_launcher.dart";
import "package:tuts/core/extensions.dart";

import "../../core/enums/code_quality.dart";

class CodeBlockViewer extends StatelessWidget {
  final StrCodeBlock code;

  CodeBlockViewer({
    required String code,
    required CodeQuality codeQuality,
    super.key,
  }) : code = StrCodeBlock(code, codeQuality: codeQuality);

  const CodeBlockViewer.fromStrCodeBlock({required this.code, super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return Directionality(
      textDirection: .ltr,
      child: Container(
        clipBehavior: .antiAlias,
        decoration: BoxDecoration(
          color: colors.surfaceContainer,
          borderRadius: .circular(10),
          border: Border.all(
            color: switch (code.codeQuality) {
              .good => Colors.green.withValues(alpha: 0.25),
              .bad => Colors.red.withValues(alpha: 0.25),
              _ => colors.outlineVariant,
            },
            width: code.codeQuality.isBad ? 1.5 : 1,
          ),
        ),
        child: Column(
          children: [
            _CodeHeader(
              language: "Dart",
              state: code.codeQuality,
              code: code.value,
            ),
            _CodeContent(code: code.value),
          ],
        ),
      ),
    );
  }
}

class _CodeHeader extends StatelessWidget {
  final String? language;
  final CodeQuality state;
  final String code;

  const _CodeHeader({
    required this.language,
    required this.state,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isDark = context.isDark;

    final statusColor = switch (state) {
      .good => Colors.green,
      .bad => Colors.red,
      _ => Colors.grey,
    };

    final bgColor = switch (state) {
      .good => Colors.green.withValues(alpha: 0.08),
      .bad => Colors.red.withValues(alpha: 0.08),
      _ => Colors.grey.withValues(alpha: 0.08),
    };

    return Container(
      padding: const .symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        border: Border(
          bottom: BorderSide(
            color: isDark
                ? Colors.white10
                : Colors.black.withValues(alpha: 0.05),
          ),
        ),
      ),
      child: Row(
        spacing: 8,
        children: [
          if (language != null)
            Text(
              language!,
              style: TextStyle(
                fontSize: 12,
                color: isDark ? Colors.grey[400] : Colors.grey[600],
                fontWeight: .w500,
              ),
            ),
          if (!state.isNormal)
            Text(
              // isBad ? l10n.badExample : l10n.goodExample,
              "(${state.isBad ? "Bad" : "Good"})",
              style: TextStyle(
                fontSize: 12,
                fontWeight: .bold,
                color: statusColor,
              ),
            ),
          const Spacer(),
          _ActionButton(
            icon: Icons.play_arrow_rounded,
            tooltip: "Try in DartPad",
            onPressed: () => _openDartPad(code),
          ),
          _ActionButton(
            icon: Icons.copy_rounded,
            tooltip: l10n.copied,
            onPressed: () {
              Clipboard.setData(ClipboardData(text: code));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(l10n.copied),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
            isCopy: true,
          ),
        ],
      ),
    );
  }

  void _openDartPad(String code) async {
    // final encodedCode = Uri.encodeComponent(code);
    // final url = Uri.parse("https://dartpad.dev/?code=$encodedCode");
    final url = Uri.parse("https://dartpad.dev");
    if (!await launchUrl(url)) {
      throw Exception("Could not launch $url");
    }
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback onPressed;
  final bool isCopy;

  const _ActionButton({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
    this.isCopy = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDark;
    return IconButton(
      icon: Icon(icon, size: 18),
      tooltip: isCopy ? "Copy Code" : tooltip,
      onPressed: onPressed,
      color: isDark ? const Color(0xFF80CBC4) : const Color(0xFF00695C),
      splashRadius: 20,
      visualDensity: .compact,
      padding: .zero,
      constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
    );
  }
}

class _CodeContent extends StatelessWidget {
  final String code;

  const _CodeContent({required this.code});

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDark;

    return Container(
      width: .infinity,
      padding: const .all(16),
      child: SelectableText.rich(
        _SyntaxHighlighter(code, isDark).highlight(),
        style: TextStyle(
          fontFamily: "FiraCode",
          fontWeight: .w500,
          fontSize: 13.5,
          height: 1.6,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}

/// ======================
/// COLORFUL SYNTAX MAGIC
/// ======================
/// ======================
/// VISUAL STUDIO STYLE HIGHLIGHTER
/// ======================
class _SyntaxHighlighter {
  final String code;
  final bool isDark;

  _SyntaxHighlighter(this.code, this.isDark);

  // VS Modern Dark Theme Colors
  static const _dPlain = Color(0xFFCCCCCC);
  static const _dComment = Color(0xFF6A9955);
  static const _dString = Color(0xFFCE9178);
  static const _dControl = Color(0xFFC586C0); // Purple (if/else/return)
  static const _dKeyword = Color(0xFF569CD6); // Blue (void/class/var)
  static const _dType = Color(0xFF4EC9B0); // Teal (Class names)
  static const _dFunction = Color(0xFFDCDCAA); // Yellow
  static const _dNumber = Color(0xFFB5CEA8);
  static const _dParam = Color(0xFF9CDCFE); // Light blue
  static const _dMeta = Color(
    0xFFC586C0,
  ); // Annotation (Same as control or separate)
  static const _dPunctuation = Color(0xFFD4D4D4);

  // VS Modern Light Theme Colors
  static const _lPlain = Color(0xFF333333);
  static const _lComment = Color(0xFF008000);
  static const _lString = Color(0xFFA31515);
  static const _lControl = Color(0xFFAF00DB); // Purple
  static const _lKeyword = Color(0xFF0000FF); // Blue
  static const _lType = Color(0xFF267F99); // Teal
  static const _lFunction = Color(0xFF795E26); // Brown-Yellow
  static const _lNumber = Color(0xFF098658);
  static const _lParam = Color(0xFF001080);
  static const _lMeta = Color(0xFFAF00DB);
  static const _lPunctuation = Color(0xFF000000);

  // Getters
  Color get plain => isDark ? _dPlain : _lPlain;
  Color get comment => isDark ? _dComment : _lComment;
  Color get string => isDark ? _dString : _lString;
  Color get control => isDark ? _dControl : _lControl;
  Color get keyword => isDark ? _dKeyword : _lKeyword;
  Color get type => isDark ? _dType : _lType;
  Color get function => isDark ? _dFunction : _lFunction;
  Color get number => isDark ? _dNumber : _lNumber;
  Color get param => isDark ? _dParam : _lParam;
  Color get meta => isDark ? _dMeta : _lMeta;
  Color get punctuation => isDark ? _dPunctuation : _lPunctuation;

  static final _dartPattern = RegExp(
    // 1. Comments (Line based)
    r'(///.*|//.*|/\*.*?\*/)|'
    // 2. Literals (Strings - multi/raw/single/double)
    r'(r?s?"""[\s\S]*?"""|r?s?'
    "'''"
    r'''[\s\S]*?'''
    "'''"
    r'''|r?s?".*?"|r?s?'.*?')|'''
    // 3. Metadata
    r'(@\w+)|'
    // 4. Control Flow (Purple)
    r'\b(if|else|switch|case|default|break|continue|return|do|while|for|in|try|catch|finally|throw|rethrow|assert|async|await|yield|on|sync|when)\b|'
    // 5. Structural/Storage (Blue)
    r'\b(abstract|as|base|class|const|covariant|deferred|dynamic|enum|export|extends|extension|external|factory|false|final|Function|get|hide|implements|import|interface|is|late|library|mixin|new|null|of|operator|part|required|sealed|set|show|static|struct|super|this|true|type|typedef|var|void|with)\b|'
    // 6. Functions (Lookahead for opening paren)
    r'\b([a-z_]\w*)(?=\s*\()|'
    // 7. Types (PascalCase)
    r'\b([A-Z][a-zA-Z0-9_]*)\b|'
    // 8. Numbers
    r'\b(0x[0-9a-fA-F]+|\d+(?:\.\d+)?)\b|'
    // 9. Named Parameters (Lookahead for colon)
    r'(\w+)(?=:)|'
    // 10. Operators
    r'([+\-*/%<>=!&|^~?]+|[{}()[\].,;:])',
  );

  /// Highlights the entire multi-line code string.
  TextSpan highlight() {
    final lines = code.split('\n');
    return TextSpan(
      children:
          lines
              .expand((l) => [_highlightLine(l), const TextSpan(text: "\n")])
              .toList()
            ..removeLast(),
    );
  }

  /// Highlights a single line of code.
  TextSpan _highlightLine(String line) {
    final spans = <TextSpan>[];
    _highlightContent(line, spans);
    return TextSpan(children: spans);
  }

  /// Recursively highlights a segment of code.
  void _highlightContent(String content, List<TextSpan> spans) {
    content.splitMapJoin(
      _dartPattern,
      onMatch: (m) {
        Color color = plain;
        String text = m.group(0)!;

        // Group 1: Comments
        if (m.group(1) != null) {
          color = comment;
        }
        // Group 2: Strings
        else if (m.group(2) != null) {
          _handleStringInterpolation(text, spans);
          return "";
        }
        // Group 3: Metadata
        else if (m.group(3) != null) {
          color = meta;
        }
        // Group 4: Control
        else if (m.group(4) != null) {
          color = control;
        }
        // Group 5: Keyword
        else if (m.group(5) != null) {
          color = keyword;
        }
        // Group 6: Function
        else if (m.group(6) != null) {
          color = function;
          text = m.group(6)!;
        }
        // Group 7: Type
        else if (m.group(7) != null) {
          color = type;
        }
        // Group 8: Number
        else if (m.group(8) != null) {
          color = number;
        }
        // Group 9: Named Param
        else if (m.group(9) != null) {
          color = param;
          text = m.group(9)!;
        }
        // Group 10: Punctuation/Operators
        else if (m.group(10) != null) {
          color = punctuation;
        }

        spans.add(
          TextSpan(
            text: text,
            style: TextStyle(color: color),
          ),
        );
        return "";
      },
      onNonMatch: (text) {
        if (text.isNotEmpty) {
          spans.add(
            TextSpan(
              text: text,
              style: TextStyle(color: plain),
            ),
          );
        }
        return "";
      },
    );
  }

  /// Processes a string literal, highlighting interpolation markers and expressions.
  void _handleStringInterpolation(String stringText, List<TextSpan> spans) {
    // Raw strings do not support interpolation in Dart.
    if (stringText.startsWith('r')) {
      spans.add(
        TextSpan(
          text: stringText,
          style: TextStyle(color: string),
        ),
      );
      return;
    }

    // Regex for basic Dart interpolation: ${expression} or $variable.
    final interpPattern = RegExp(r'(\$\{.*?\})|(\$[a-zA-Z_]\w*)');

    stringText.splitMapJoin(
      interpPattern,
      onMatch: (m) {
        if (m.group(1) != null) {
          // Case: ${nestedExpression}
          final fullMatch = m.group(1)!;
          // Highlight the delimiters
          spans.add(
            TextSpan(
              text: r'${',
              style: TextStyle(color: control),
            ),
          );
          // Extract the expression inside ${ }
          final expression = fullMatch.substring(2, fullMatch.length - 1);
          // Highlight the expression content recursively
          _highlightContent(expression, spans);
          spans.add(
            TextSpan(
              text: '}',
              style: TextStyle(color: control),
            ),
          );
        } else if (m.group(2) != null) {
          // Case: $simpleVariable
          final fullMatch = m.group(2)!;
          // Highlight the '$' delimiter
          spans.add(
            TextSpan(
              text: r'$',
              style: TextStyle(color: control),
            ),
          );
          // Highlight the variable name with the 'parameter' color
          spans.add(
            TextSpan(
              text: fullMatch.substring(1),
              style: TextStyle(color: param),
            ),
          );
        }
        return "";
      },
      onNonMatch: (nonMatch) {
        if (nonMatch.isNotEmpty) {
          // Regular string content
          spans.add(
            TextSpan(
              text: nonMatch,
              style: TextStyle(color: string),
            ),
          );
        }
        return "";
      },
    );
  }
}
