import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:loopsbase/core/models/code_block.dart";
import "package:url_launcher/url_launcher.dart";
import "package:loopsbase/core/extensions/extensions.dart";

class CodeBlockViewer extends StatelessWidget {
  CodeBlockViewer({
    required String code,
    required CodeQuality codeQuality,
    this.enableHorizontalScroll = true,
    super.key,
  }) : code = StrCodeBlock(code, codeQuality: codeQuality);

  const CodeBlockViewer.fromStrCodeBlock(
    this.code, {
    this.enableHorizontalScroll = true,
    super.key,
  });
  final StrCodeBlock code;
  final bool enableHorizontalScroll;

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
              language: code.codeLanguage.displayName,
              state: code.codeQuality,
              code: code.value,
              codeLanguage: code.codeLanguage,
            ),
            SizedBox(
              width: .infinity,
              child: switch (enableHorizontalScroll) {
                true => SingleChildScrollView(
                  scrollDirection: .horizontal,
                  child: buildCode(),
                ),
                false => buildCode(),
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCode() {
    return _CodeContent(code: code.value, codeLanguage: code.codeLanguage);
  }
}

class _CodeHeader extends StatelessWidget {
  const _CodeHeader({
    required this.language,
    required this.state,
    required this.code,
    required this.codeLanguage,
  });
  final String? language;
  final CodeQuality state;
  final String code;
  final CodeLanguage codeLanguage;

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
              "• ${state.isBad ? "Bad" : "Good"}",
              style: TextStyle(
                fontSize: 12,
                fontWeight: .bold,
                color: statusColor,
              ),
            ),
          const Spacer(),
          if (codeLanguage == .dart)
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
    final url = Uri.parse("https://dartpad.dev");
    if (!await launchUrl(url)) {
      throw Exception("Could not launch $url");
    }
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
    this.isCopy = false,
  });
  final IconData icon;
  final String tooltip;
  final VoidCallback onPressed;
  final bool isCopy;

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
  const _CodeContent({required this.code, required this.codeLanguage});
  final String code;
  final CodeLanguage codeLanguage;

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDark;

    return Padding(
      padding: const .all(16),
      child: SelectableText.rich(
        SyntaxHighlighter.create(codeLanguage, code, isDark).highlight(),
        style: const TextStyle(
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

// Extension for display name
extension CodeLanguageExtension on CodeLanguage {
  String get displayName {
    return switch (this) {
      .sql => 'SQL',
      .text => 'Text',
      .dart => 'Dart',
      .yaml => 'YAML',
      .python => 'Python',
      .bash => 'Bash',
      .json => 'JSON',
    };
  }
}

// ============================================================================
// SYNTAX HIGHLIGHTER BASE CLASS
// ============================================================================

abstract class SyntaxHighlighter {
  SyntaxHighlighter(this.code, this.isDark);

  factory SyntaxHighlighter.create(
    CodeLanguage language,
    String code,
    bool isDark,
  ) {
    return switch (language) {
      .text => TextSyntaxHighlighter(code, isDark),
      .sql => SQLSyntaxHighlighter(code, isDark),
      .dart => DartSyntaxHighlighter(code, isDark),
      .yaml => YamlSyntaxHighlighter(code, isDark),
      .python => PythonSyntaxHighlighter(code, isDark),
      .bash => BashSyntaxHighlighter(code, isDark),
      .json => JsonSyntaxHighlighter(code, isDark),
    };
  }

  final String code;
  final bool isDark;

  // VS Modern Dark Theme Colors
  static const _dPlain = Color(0xFFCCCCCC);
  static const _dComment = Color(0xFF6A9955);
  static const _dString = Color(0xFFCE9178);
  static const _dControl = Color(0xFFC586C0);
  static const _dKeyword = Color(0xFF569CD6);
  static const _dType = Color(0xFF4EC9B0);
  static const _dFunction = Color(0xFFDCDCAA);
  static const _dNumber = Color(0xFFB5CEA8);
  static const _dParam = Color(0xFF9CDCFE);
  static const _dMeta = Color(0xFFC586C0);
  static const _dPunctuation = Color(0xFFD4D4D4);

  // VS Modern Light Theme Colors
  static const _lPlain = Color(0xFF333333);
  static const _lComment = Color(0xFF008000);
  static const _lString = Color(0xFFA31515);
  static const _lControl = Color(0xFFAF00DB);
  static const _lKeyword = Color(0xFF0000FF);
  static const _lType = Color(0xFF267F99);
  static const _lFunction = Color(0xFF795E26);
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

  /// Highlights the entire multi-line code string.
  TextSpan highlight() {
    final lines = code.split('\n');
    return TextSpan(
      children:
          lines
              .expand((l) => [highlightLine(l), const TextSpan(text: "\n")])
              .toList()
            ..removeLast(),
    );
  }

  /// Highlights a single line of code. Must be implemented by subclasses.
  TextSpan highlightLine(String line);
}

// ============================================================================
// TEXT (PLAIN) SYNTAX HIGHLIGHTER
// ============================================================================

class TextSyntaxHighlighter extends SyntaxHighlighter {
  TextSyntaxHighlighter(super.code, super.isDark);

  @override
  TextSpan highlightLine(String line) {
    // Plain text has no syntax to parse, so we just return
    // the whole line in the default 'plain' color.
    return TextSpan(
      text: line,
      style: TextStyle(color: plain),
    );
  }
}

// ============================================================================
// SQL SYNTAX HIGHLIGHTER
// ============================================================================

class SQLSyntaxHighlighter extends SyntaxHighlighter {
  SQLSyntaxHighlighter(super.code, super.isDark);

  static final _sqlPattern = RegExp(
    // 1. Comments (-- line comments and /* block comments */)
    r'(--.*|/\*[\s\S]*?\*/)|'
    // 2. Strings (Single quoted)
    r"('([^'\\]|\\.)*')|"
    // 3. Keywords (DML, DDL, DCL)
    r'\b(SELECT|FROM|WHERE|INSERT|INTO|UPDATE|DELETE|CREATE|ALTER|DROP|TABLE|DATABASE|INDEX|VIEW|JOIN|INNER|LEFT|RIGHT|FULL|OUTER|ON|AS|AND|OR|NOT|IN|BETWEEN|LIKE|IS|NULL|ORDER|BY|GROUP|HAVING|DISTINCT|UNION|ALL|LIMIT|OFFSET|SET|VALUES|DEFAULT|PRIMARY|FOREIGN|KEY|REFERENCES|CONSTRAINT|UNIQUE|CHECK|CASCADE|GRANT|REVOKE|COMMIT|ROLLBACK|SAVEPOINT|TRANSACTION|BEGIN|END|CASE|WHEN|THEN|ELSE|EXISTS|ANY|SOME)\b|'
    // 4. Data Types
    r'\b(INT|INTEGER|BIGINT|SMALLINT|TINYINT|DECIMAL|NUMERIC|FLOAT|DOUBLE|REAL|CHAR|VARCHAR|TEXT|BLOB|DATE|TIME|DATETIME|TIMESTAMP|BOOLEAN|BOOL|BINARY|VARBINARY|ENUM|JSON|UUID|SERIAL|AUTO_INCREMENT)\b|'
    // 5. Functions
    r'\b(COUNT|SUM|AVG|MAX|MIN|CONCAT|SUBSTRING|UPPER|LOWER|TRIM|LENGTH|COALESCE|IFNULL|NULLIF|CAST|CONVERT|NOW|CURRENT_TIMESTAMP|CURRENT_DATE|DATE_ADD|DATE_SUB|DATEDIFF|YEAR|MONTH|DAY|HOUR|MINUTE|SECOND|ABS|ROUND|FLOOR|CEIL|RAND|MD5|SHA1)\b(?=\s*\()|'
    // 6. Numbers (integers, decimals, scientific notation)
    r'\b(\d+(?:\.\d+)?(?:[eE][+-]?\d+)?)\b|'
    // 7. Operators and Punctuation
    r'([+\-*/%<>=!]+|[()[\]{}.,;:])',
    caseSensitive: false,
  );

  @override
  TextSpan highlightLine(String line) {
    final spans = <TextSpan>[];

    line.splitMapJoin(
      _sqlPattern,
      onMatch: (m) {
        Color color = plain;
        String text = m.group(0)!;

        // Group 1: Comments
        if (m.group(1) != null) {
          color = comment;
        }
        // Group 2: Strings
        else if (m.group(2) != null) {
          color = string;
        }
        // Group 3: Keywords
        else if (m.group(3) != null) {
          color = keyword;
        }
        // Group 4: Data Types
        else if (m.group(4) != null) {
          color = type;
        }
        // Group 5: Functions
        else if (m.group(5) != null) {
          color = function;
        }
        // Group 6: Numbers
        else if (m.group(6) != null) {
          color = number;
        }
        // Group 7: Operators/Punctuation
        else if (m.group(7) != null) {
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

    return TextSpan(children: spans);
  }
}

// ============================================================================
// DART SYNTAX HIGHLIGHTER
// ============================================================================

class DartSyntaxHighlighter extends SyntaxHighlighter {
  DartSyntaxHighlighter(super.code, super.isDark);

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
    // 6. Built-in Types (NEW - must come before functions)
    r'\b(int|double|num|bool|String|Object|List|Set|Map|Iterable|Iterator|Future|Stream|Duration|DateTime|Uri|RegExp|Pattern|Match|Error|Exception|StackTrace|Type|Symbol|Null|Never)\b|'
    // 7. Functions (Lookahead for opening paren)
    r'\b([a-z_]\w*)(?=\s*\()|'
    // 8. Types (PascalCase)
    r'\b([A-Z][a-zA-Z0-9_]*)\b|'
    // 9. Numbers
    r'\b(0x[0-9a-fA-F]+|\d+(?:\.\d+)?)\b|'
    // 10. Named Parameters (Lookahead for colon)
    r'(\w+)(?=:)|'
    // 11. Operators
    r'([+\-*/%<>=!&|^~?]+|[{}()[\].,;:])',
  );

  @override
  TextSpan highlightLine(String line) {
    final spans = <TextSpan>[];
    _highlightContent(line, spans);
    return TextSpan(children: spans);
  }

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
        // Group 6: Built-in Types (NEW)
        else if (m.group(6) != null) {
          color = type;
        }
        // Group 7: Function
        else if (m.group(7) != null) {
          color = function;
          text = m.group(7)!;
        }
        // Group 8: Type (PascalCase)
        else if (m.group(8) != null) {
          color = type;
        }
        // Group 9: Number
        else if (m.group(9) != null) {
          color = number;
        }
        // Group 10: Named Param
        else if (m.group(10) != null) {
          color = param;
          text = m.group(10)!;
        }
        // Group 11: Punctuation/Operators
        else if (m.group(11) != null) {
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

    final interpPattern = RegExp(r'(\$\{.*?\})|(\$[a-zA-Z_]\w*)');

    stringText.splitMapJoin(
      interpPattern,
      onMatch: (m) {
        if (m.group(1) != null) {
          // Case: ${nestedExpression}
          final fullMatch = m.group(1)!;
          spans.add(
            TextSpan(
              text: r'${',
              style: TextStyle(color: control),
            ),
          );
          final expression = fullMatch.substring(2, fullMatch.length - 1);
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
          spans.add(
            TextSpan(
              text: r'$',
              style: TextStyle(color: control),
            ),
          );
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

// ============================================================================
// PYTHON SYNTAX HIGHLIGHTER
// ============================================================================

class PythonSyntaxHighlighter extends SyntaxHighlighter {
  PythonSyntaxHighlighter(super.code, super.isDark);

  static final _pythonPattern = RegExp(
    // 1. Comments
    r'(#.*)|'
    // 2. Triple quoted strings (multi-line)
    r'''("""[\s\S]*?"""|\'\'\'[\s\S]*?\'\'\')|'''
    // 3. Single / Double quoted strings
    r'''("([^"\\]|\\.)*"|\'([^\'\\]|\\.)*\')|'''
    // 4. Decorators
    r'(@\w+)|'
    // 5. Control Flow
    r'\b(if|elif|else|match|case|for|while|break|continue|return|yield|try|except|finally|raise|assert|with|async|await|pass|lambda|in|is|not|and|or)\b|'
    // 6. Keywords / Declarations
    r'\b(def|class|from|import|as|global|nonlocal|del|True|False|None)\b|'
    // 7. Functions (identifier followed by paren)
    r'\b([a-z_]\w*)(?=\s*\()|'
    // 8. Types (PascalCase convention)
    r'\b([A-Z][a-zA-Z0-9_]*)\b|'
    // 9. Numbers (int, float, hex, binary)
    r'\b(0x[0-9a-fA-F]+|0b[01]+|\d+(?:\.\d+)?)\b|'
    // 10. Parameters (before equals in function defs)
    r'\b(\w+)(?=\s*=)|'
    // 11. Operators / punctuation
    r'([+\-*/%<>=!&|^~:,.\[\]{}()]+)',
  );

  @override
  TextSpan highlightLine(String line) {
    final spans = <TextSpan>[];

    line.splitMapJoin(
      _pythonPattern,
      onMatch: (m) {
        Color color = plain;
        String text = m.group(0)!;

        // Group 1: Comments
        if (m.group(1) != null) {
          color = comment;
        }
        // Group 2-3: Strings
        else if (m.group(2) != null || m.group(3) != null) {
          color = string;
        }
        // Group 4: Decorators
        else if (m.group(4) != null) {
          color = meta;
        }
        // Group 5: Control Flow
        else if (m.group(5) != null) {
          color = control;
        }
        // Group 6: Keywords
        else if (m.group(6) != null) {
          color = keyword;
        }
        // Group 7: Function names
        else if (m.group(7) != null) {
          color = function;
          text = m.group(7)!;
        }
        // Group 8: Types
        else if (m.group(8) != null) {
          color = type;
        }
        // Group 9: Numbers
        else if (m.group(9) != null) {
          color = number;
        }
        // Group 10: Parameters
        else if (m.group(10) != null) {
          color = param;
          text = m.group(10)!;
        }
        // Group 11: Operators / punctuation
        else if (m.group(11) != null) {
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

    return TextSpan(children: spans);
  }
}

// ============================================================================
// YAML SYNTAX HIGHLIGHTER
// ============================================================================

class YamlSyntaxHighlighter extends SyntaxHighlighter {
  YamlSyntaxHighlighter(super.code, super.isDark);

  static final _yamlPattern = RegExp(
    // 1. Comments
    r'(#.*)|'
    // 2. Keys (words followed by colon)
    r'(\w+(?:\s+\w+)*)\s*:|'
    // 3. Strings (quoted)
    r'("(?:[^"\\]|\\.)*"|'
    r"'(?:[^'\\]|\\.)*')|"
    // 4. Numbers (integers and floats)
    r'\b(-?\d+(?:\.\d+)?)\b|'
    // 5. Booleans and null
    r'\b(true|false|null|yes|no|on|off)\b|'
    // 6. Special characters (list markers, anchors, aliases)
    r'([\-\*&])|'
    // 7. Document markers
    r'(---|\.\.\.)',
  );

  @override
  TextSpan highlightLine(String line) {
    final spans = <TextSpan>[];

    line.splitMapJoin(
      _yamlPattern,
      onMatch: (m) {
        Color color = plain;
        String text = m.group(0)!;

        // Group 1: Comments
        if (m.group(1) != null) {
          color = comment;
        }
        // Group 2: Keys
        else if (m.group(2) != null) {
          color = keyword;
          text = '${m.group(2)!}:';
        }
        // Group 3: Quoted strings
        else if (m.group(3) != null) {
          color = string;
        }
        // Group 4: Numbers
        else if (m.group(4) != null) {
          color = number;
        }
        // Group 5: Booleans and null
        else if (m.group(5) != null) {
          color = control;
        }
        // Group 6: Special characters
        else if (m.group(6) != null) {
          color = punctuation;
        }
        // Group 7: Document markers
        else if (m.group(7) != null) {
          color = meta;
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
          // Check if it's an unquoted string value
          final trimmed = text.trim();
          if (trimmed.isNotEmpty && !text.startsWith(' ')) {
            spans.add(
              TextSpan(
                text: text,
                style: TextStyle(color: string),
              ),
            );
          } else {
            spans.add(
              TextSpan(
                text: text,
                style: TextStyle(color: plain),
              ),
            );
          }
        }
        return "";
      },
    );

    return TextSpan(children: spans);
  }
}

// ============================================================================
// BASH SYNTAX HIGHLIGHTER
// ============================================================================

class BashSyntaxHighlighter extends SyntaxHighlighter {
  BashSyntaxHighlighter(super.code, super.isDark);

  static final _bashPattern = RegExp(
    // 1. Comments (Starts with #)
    r'(#.*)|'
    // 2. Strings (Double quoted with potential interpolation, or Single quoted literal)
    r'("([^"\\]|\\.)*"|'
    r"'([^'\\]|\\.)*')|"
    // 3. Variables ($VAR, ${VAR}, $?, $*, $@)
    r'(\$[a-zA-Z_]\w*|\$\{[^}]+\}|\$[?*@#$!0-9])|'
    // 4. Control Flow / Keywords
    r'\b(if|then|else|elif|fi|case|esac|for|select|while|until|do|done|in|function|time|coproc|break|continue|return|exit)\b|'
    // 5. Built-in Commands & Common Tools
    r'\b(echo|cd|pwd|ls|cat|grep|sed|awk|source|export|alias|eval|set|unset|readonly|shift|umask|true|false|sudo|chmod|chown|mkdir|rm|cp|mv|touch|git|npm|flutter|dart|docker|make|curl|wget|tar|unzip|ssh|scp|kill|ps|top|htop|df|du)\b|'
    // 6. Numbers
    r'\b(\d+(?:\.\d+)?)\b|'
    // 7. Flags (e.g., -v, --verbose) - capturing simplified dash patterns
    r'(\s-{1,2}[a-zA-Z0-9_-]+)|'
    // 8. Operators & Punctuation
    r'(\|\||&&|>>|<<|[|&;()<>!={}\[\]])',
  );

  @override
  TextSpan highlightLine(String line) {
    final spans = <TextSpan>[];

    line.splitMapJoin(
      _bashPattern,
      onMatch: (m) {
        Color color = plain;
        final String text = m.group(0)!;

        // Group 1: Comments
        if (m.group(1) != null) {
          color = comment;
        }
        // Group 2: Strings
        else if (m.group(2) != null) {
          color = string;
        }
        // Group 3: Variables
        else if (m.group(3) != null) {
          color =
              param; // VS Code usually colors shell variables blue-ish (param color)
        }
        // Group 4: Keywords
        else if (m.group(4) != null) {
          color = keyword;
        }
        // Group 5: Commands
        else if (m.group(5) != null) {
          color = function; // Commands treated as functions
        }
        // Group 6: Numbers
        else if (m.group(6) != null) {
          color = number;
        }
        // Group 7: Flags
        else if (m.group(7) != null) {
          color = type; // Using 'type' color for flags to distinguish them
        }
        // Group 8: Operators
        else if (m.group(8) != null) {
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

    return TextSpan(children: spans);
  }
}

// ============================================================================
// JSON SYNTAX HIGHLIGHTER
// ============================================================================

class JsonSyntaxHighlighter extends SyntaxHighlighter {
  JsonSyntaxHighlighter(super.code, super.isDark);

  static final _jsonPattern = RegExp(
    // 1. Keys (Double quoted string followed by a colon)
    // Uses lookahead (?=\s*:) to ensure it is a key, but doesn't consume the colon.
    r'("([^"\\]|\\.)*")(?=\s*:)|'
    // 2. String Values (Double quoted)
    r'("([^"\\]|\\.)*")|'
    // 3. Literals (true, false, null)
    r'\b(true|false|null)\b|'
    // 4. Numbers (Integer, Float, Scientific notation)
    r'\b(-?(?:0|[1-9]\d*)(?:\.\d+)?(?:[eE][+-]?\d+)?)\b|'
    // 5. Punctuation
    r'([{}[\],:])',
  );

  @override
  TextSpan highlightLine(String line) {
    final spans = <TextSpan>[];

    line.splitMapJoin(
      _jsonPattern,
      onMatch: (m) {
        Color color = plain;
        final String text = m.group(0)!;

        // Group 1: Keys (Property names)
        if (m.group(1) != null) {
          // Using 'keyword' (Blue) for keys to distinguish from value strings
          color = keyword;
        }
        // Group 2: String Values
        else if (m.group(2) != null) {
          color = string;
        }
        // Group 3: Literals
        else if (m.group(3) != null) {
          color = control; // or keyword, usually distinct for booleans
        }
        // Group 4: Numbers
        else if (m.group(4) != null) {
          color = number;
        }
        // Group 5: Punctuation
        else if (m.group(5) != null) {
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

    return TextSpan(children: spans);
  }
}

//
