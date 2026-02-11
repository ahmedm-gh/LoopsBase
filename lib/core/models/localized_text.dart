class LocalizedValue<E> {
  const LocalizedValue({required this.en, required this.ar});

  final E en, ar;

  E get(String languageCode) => switch (languageCode) {
    "ar" => ar,
    _ => en,
  };

  E call(String languageCode) => get(languageCode);

  Map<String, E> toMap() => {"en": en, "ar": ar};

  @override
  int get hashCode => en.hashCode ^ ar.hashCode;

  @override
  bool operator ==(Object other) {
    return other is LocalizedValue && other.en == en && other.ar == ar;
  }
}

class LocalizedString extends LocalizedValue<String> {
  const LocalizedString({required super.en, required super.ar});
}

class LocalizedStringList extends LocalizedValue<List<String>> {
  const LocalizedStringList({required super.en, required super.ar});
}
