enum QuestionType {
  theoretical,
  practical;

  bool get isTheoretical => this == .theoretical;
  bool get isPractical => this == .practical;
}
