abstract base class QuestionAnswer<V> {
  final V value;

  const QuestionAnswer(this.value);

  @override
  String toString() => value.toString();
}

final class QuestionAnswerString extends QuestionAnswer<String> {
  const QuestionAnswerString(super.value);

  @override
  String toString() => value;
}

final class QuestionAnswerList extends QuestionAnswer<List<String>> {
  final String? title;
  const QuestionAnswerList({this.title, List<String> value = const []})
    : super(value);

  @override
  String toString() => <String>[?title, ...value].join('\n');
}

final class QuestionAnswerUnorderedList extends QuestionAnswerList {
  const QuestionAnswerUnorderedList({super.title, super.value});
}

final class QuestionAnswerOrderedList extends QuestionAnswerList {
  const QuestionAnswerOrderedList({super.title, super.value});
}
