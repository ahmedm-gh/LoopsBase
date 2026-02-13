import "package:flutter/material.dart";
import "package:loopsbase/core/extensions/extensions.dart";
import "package:url_launcher/url_launcher.dart";

class ReferenceWidget extends StatelessWidget {
  const ReferenceWidget({required this.urls, super.key});
  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;

    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const .symmetric(vertical: 8),
          child: Text(
            urls.length > 1 ? l10n.references : l10n.reference,
            style: TextStyle(
              fontWeight: .bold,
              color: colors.primary,
              fontSize: 14,
            ),
          ),
        ),
        ...urls.map(
          (url) => Padding(
            padding: const .only(bottom: 4),
            child: InkWell(
              onTap: () => launchUrl(Uri.parse(url)),
              child: Text(
                url,
                style: TextStyle(
                  fontSize: 12,
                  color: colors.outline,
                  fontStyle: .italic,
                  decoration: .underline,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
