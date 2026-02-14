import 'package:flutter/material.dart';

import 'code_block.dart';

@optionalTypeArgs
sealed class Content<V> {
  const Content(this.value);
  final V value;

  @override
  String toString() => value.toString();
}

/// string
final class StrContent extends Content<String> {
  const StrContent(super.value);

  @override
  String toString() => value;
}

/// code
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

/// list
final class ListContent extends Content<List<String>> {
  const ListContent({this.title, List<String> value = const []}) : super(value);
  final String? title;

  @override
  String toString() => <String>[?title, ...value].join('\n');
}

/// unordered list
final class ULContent extends ListContent {
  const ULContent({super.title, super.value});
}

/// ordered list
final class OLContent extends ListContent {
  const OLContent({super.title, super.value});
}
