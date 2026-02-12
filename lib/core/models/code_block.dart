import 'package:equatable/equatable.dart';

enum CodeQuality {
  normal,
  good,
  bad;

  bool get isNormal => this == .normal;
  bool get isGood => this == .good;
  bool get isBad => this == .bad;
}

enum CodeLanguage { dart, yaml }

enum CodeType { code, explanation }

class StrCodeBlock with EquatableMixin {
  const StrCodeBlock(
    this.value, {
    this.codeLanguage = .dart,
    this.codeType = .code,
    this.codeQuality = .normal,
  });

  const StrCodeBlock.good(
    this.value, {
    this.codeLanguage = .dart,
    this.codeType = .code,
  }) : codeQuality = .good;

  const StrCodeBlock.bad(
    this.value, {
    this.codeLanguage = .dart,
    this.codeType = .code,
  }) : codeQuality = .bad;

  final String value;
  final CodeQuality codeQuality;
  final CodeLanguage codeLanguage;
  final CodeType codeType;

  static const empty = StrCodeBlock("");

  @override
  List<Object?> get props => [value, codeLanguage, codeType];
}
