extension BoolExtensions on bool {
  bool get isTrue => this;
  bool get isFalse => !this;

  T when<T>({required T Function() onTrue, required T Function() onFalse}) {
    return this ? onTrue() : onFalse();
  }

  T call<T>(T trueVal, T falseVal) => this ? trueVal : falseVal;
}
