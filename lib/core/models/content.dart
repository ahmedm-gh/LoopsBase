import 'package:flutter/material.dart';

import 'code_block.dart';

@optionalTypeArgs
sealed class Content<V> {
  const Content(this.value);
  final V value;

  @override
  String toString() => value.toString();
}

final class StringContent extends Content<String> {
  const StringContent(super.value);

  @override
  String toString() => value;
}

final class CodeContent extends Content<String> {
  const CodeContent(
    super.value, {
    required this.codeLanguage,
    this.codeQuality = .normal,
    this.codeType = .code,
  });

  final CodeQuality codeQuality;
  final CodeLanguage codeLanguage;
  final CodeType codeType;

  StrCodeBlock get code => StrCodeBlock(
    value,
    codeQuality: codeQuality,
    codeLanguage: codeLanguage,
    codeType: codeType,
  );

  @override
  String toString() => value;
}

final class ListContent extends Content<List<String>> {
  const ListContent({this.title, List<String> value = const []}) : super(value);
  final String? title;

  @override
  String toString() => <String>[?title, ...value].join('\n');
}

final class UnorderedListContent extends ListContent {
  const UnorderedListContent({super.title, super.value});
}

final class OrderedListContent extends ListContent {
  const OrderedListContent({super.title, super.value});
}
