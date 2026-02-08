import 'package:flutter/material.dart';
import 'package:tuts/core/extensions.dart';
import 'package:tuts/core/repositories/refactoring_repository.dart';
import 'package:tuts/shared/app_widgets.dart';

class RefactoringDetailsPage extends StatelessWidget {
  final String techniqueId;

  const RefactoringDetailsPage({super.key, required this.techniqueId});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final technique = RefactoringRepository.getTechnique(context, techniqueId);

    return Scaffold(
      appBar: AppBar(title: Text(technique.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              technique.category.toUpperCase(),
              style: textTheme.labelMedium?.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(technique.description, style: textTheme.bodyLarge),
            const SizedBox(height: 24),

            // Problem & Solution
            _Section(
              title: "Problem",
              icon: Icons.error_outline,
              color: Colors.red[700]!,
              content: technique.problem,
            ),
            const SizedBox(height: 16),
            _Section(
              title: "Solution",
              icon: Icons.check_circle_outline,
              color: Colors.green[700]!,
              content: technique.solution,
            ),

            const Divider(height: 32),

            // Simple Example
            Text(
              "Simple Example",
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Before",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            CodeBlockViewer.fromStrCodeBlock(code: technique.simpleBefore),
            const SizedBox(height: 8),
            Text(
              "After",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            CodeBlockViewer.fromStrCodeBlock(code: technique.simpleAfter),

            // Complex Example (if available)
            if (technique.complexBefore != null) ...[
              const Divider(height: 32),
              Text(
                "Complex Example",
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Before",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              CodeBlockViewer.fromStrCodeBlock(code: technique.complexBefore!),
              const SizedBox(height: 8),
              Text(
                "After",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              CodeBlockViewer.fromStrCodeBlock(code: technique.complexAfter!),
            ],
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String content;

  const _Section({
    required this.title,
    required this.icon,
    required this.color,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              const SizedBox(height: 4),
              Text(content),
            ],
          ),
        ),
      ],
    );
  }
}
