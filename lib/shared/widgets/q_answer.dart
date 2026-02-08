import 'package:flutter/material.dart';
import 'package:tuts/core/extensions.dart';
import 'package:tuts/core/models/question_answer.dart';

// class AnswerPart {
//   final String content;
//   final String? number;
//   final bool isNumbered;

//   AnswerPart({required this.content, this.number, required this.isNumbered});
// }

class QuestionAnswerViewer extends StatelessWidget {
  const QuestionAnswerViewer(this.answer, {super.key});

  final QuestionAnswer answer;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return switch (answer) {
      QuestionAnswerString value => Text(value.value),
      QuestionAnswerList value => Column(
        crossAxisAlignment: .stretch,
        spacing: 2.5,
        children: [
          if (value.title case final title?)
            Text(title, style: TextStyle(fontWeight: .bold, fontSize: 16)),
          ...buildItems(value, colors),
        ],
      ),
      _ => const SizedBox.shrink(),
    };
  }

  List<Widget> buildItems(QuestionAnswerList answer, ColorScheme colors) {
    if (answer is QuestionAnswerOrderedList) {
      return [
        for (var i = 0; i < answer.value.length; i++)
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: colors.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const .symmetric(horizontal: 5, vertical: 2.5),
                alignment: .center,
                constraints: const BoxConstraints(minWidth: 30),
                child: Text(
                  "${i + 1}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 5),
              Expanded(child: Text(answer.value[i])),
            ],
          ),
      ];
    } else {
      return answer.value.map((item) => Text(item)).toList();
    }
  }
}
