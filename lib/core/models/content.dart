sealed class Content<V> {
  final V value;

  const Content(this.value);

  @override
  String toString() => value.toString();
}

final class StringContent extends Content<String> {
  const StringContent(super.value);

  @override
  String toString() => value;
}

final class ListContent extends Content<List<String>> {
  final String? title;
  const ListContent({this.title, List<String> value = const []}) : super(value);

  @override
  String toString() => <String>[?title, ...value].join('\n');
}

final class UnorderedListContent extends ListContent {
  const UnorderedListContent({super.title, super.value});
}

final class OrderedListContent extends ListContent {
  const OrderedListContent({super.title, super.value});
}
