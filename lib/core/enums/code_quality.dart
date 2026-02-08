enum CodeQuality {
  normal,
  good,
  bad;

  bool get isNormal => this == .normal;
  bool get isGood => this == .good;
  bool get isBad => this == .bad;
}
