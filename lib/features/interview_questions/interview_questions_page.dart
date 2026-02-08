import 'package:flutter/material.dart';
import 'package:tuts/core/enums/difficulty_level.dart';
import 'package:tuts/core/extensions.dart';
import 'package:tuts/data/interview_questions_repository.dart';
import 'package:tuts/core/models/interview_question.dart';
import 'package:tuts/features/interview_questions/question_details_page.dart';
import 'package:tuts/shared/widgets/app_chip.dart';

class InterviewQuestionsPage extends StatefulWidget {
  const InterviewQuestionsPage({super.key});

  @override
  State<InterviewQuestionsPage> createState() => _InterviewQuestionsPageState();
}

class _InterviewQuestionsPageState extends State<InterviewQuestionsPage> {
  final _searchController = TextEditingController();
  String _searchQuery = '';
  DifficultyLevel? _selectedDifficulty;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<InterviewQuestion> get _filteredQuestions {
    final langCode = context.l10n.localeName;
    var questions = InterviewQuestionsRepository.search(_searchQuery, langCode);
    if (_selectedDifficulty != null) {
      questions = questions
          .where((q) => q.difficulty == _selectedDifficulty)
          .toList();
    }
    return questions;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final questions = _filteredQuestions;

    // Group by difficulty
    final grouped = <DifficultyLevel, List<InterviewQuestion>>{};
    for (final q in questions) {
      grouped.putIfAbsent(q.difficulty, () => []).add(q);
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.interviewQuestions)),
      body: Column(
        crossAxisAlignment: .stretch,
        children: [
          // Search bar
          Padding(
            padding: const .all(10),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: l10n.search,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: _searchQuery.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              _searchController.clear();
                              setState(() => _searchQuery = '');
                            },
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onChanged: (v) => setState(() => _searchQuery = v),
                ),

                const SizedBox(height: 10),

                // Filter chips
                SingleChildScrollView(
                  scrollDirection: .horizontal,
                  child: Row(
                    children: [
                      _FilterChip(
                        label: l10n.all,
                        selected: _selectedDifficulty == null,
                        onSelected: () =>
                            setState(() => _selectedDifficulty = null),
                      ),
                      ...DifficultyLevel.values.map(
                        (level) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: _FilterChip(
                            label: level.label(l10n),
                            selected: _selectedDifficulty == level,
                            color: level.color,
                            onSelected: () {
                              setState(() {
                                _selectedDifficulty = level;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const Divider(height: 1, thickness: 1),

          // Questions list
          Expanded(
            child: questions.isEmpty
                ? Center(child: Text(l10n.noResults))
                : ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: questions.length,
                    itemBuilder: (_, i) {
                      return _QuestionCard(question: questions[i]);
                    },
                    separatorBuilder: (_, i) => const SizedBox(height: 10),
                  ),
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.selected,
    required this.onSelected,
    this.color,
  });
  final String label;
  final bool selected;
  final Color? color;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) => onSelected(),
      selectedColor: color?.withValues(alpha: 0.2),
      checkmarkColor: color,
    );
  }
}

class _QuestionCard extends StatelessWidget {
  const _QuestionCard({required this.question});
  final InterviewQuestion question;

  @override
  Widget build(BuildContext context) {
    final langCode = context.l10n.localeName;
    final colors = context.colorScheme;

    final content = question.getLocalizedContent(langCode);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (_) => QuestionDetailsPage(question: question),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 10,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      content.question,
                      style: const TextStyle(fontSize: 16, fontWeight: .w600),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(Icons.chevron_right, color: colors.onSurfaceVariant),
                ],
              ),
              Wrap(
                spacing: 4,
                runSpacing: 4,
                children: [
                  DifficultyChip(difficultyLevel: question.difficulty),
                  ...question.tags?.map(
                        (tag) => TagChip(
                          child: Text(
                            tag,
                            style: const TextStyle(fontSize: 10),
                          ),
                        ),
                      ) ??
                      [],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
