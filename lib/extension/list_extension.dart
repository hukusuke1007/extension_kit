extension ListExtension on List {
  List<T> replace<T extends Object>(Object newItem) => map((Object d) {
    if (d.hashCode == newItem.hashCode) {
      return newItem as T;
    }
    return d as T;
  }).toList();
}

extension NumListExtension on List<num> {
  num max() {
    if (isNotEmpty) {
      if (contains(null)) {
        return -1;
      }
      final items = toList();
      if (length > 1) {
        items.sort((a, b) => b.compareTo(a));
      }
      return items.first;
    }
    return -1;
  }
}