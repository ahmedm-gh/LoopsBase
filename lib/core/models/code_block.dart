import 'package:tuts/core/enums/code_quality.dart';

class StrCodeBlock {
  final String value;
  final CodeQuality codeQuality;

  const StrCodeBlock(this.value, {this.codeQuality = .normal});

  const StrCodeBlock.good(this.value) : codeQuality = .good;

  const StrCodeBlock.bad(this.value) : codeQuality = .bad;

  static const empty = StrCodeBlock("", codeQuality: .normal);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    return other is StrCodeBlock && other.value == value;
  }
}
