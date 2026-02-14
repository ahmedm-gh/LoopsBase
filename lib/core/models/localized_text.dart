/// Localized Generic Value [T]
class LocV<T> {
  const LocV({required this.en, required this.ar});

  final T en, ar;

  /// Get localized value based on `language-code`
  T get(String langCode) => switch (langCode) {
    "ar" => ar,
    _ => en,
  };

  T call(String langCode) => get(langCode);

  Map<String, T> toMap() => {"en": en, "ar": ar};

  @override
  String toString() => "$runtimeType(en: $en, ar: $ar)";

  @override
  int get hashCode => en.hashCode ^ ar.hashCode;

  @override
  bool operator ==(Object other) {
    return other is LocV && other.en == en && other.ar == ar;
  }
}

/// Localized String
class LocS extends LocV<String> {
  const LocS({required super.en, required super.ar});
}

/// Localized List of Strings
class LocSL extends LocV<List<String>> {
  const LocSL({required super.en, required super.ar});
}
