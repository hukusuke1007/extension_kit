extension StringExtension on String {
  DateTime toDate() => DateTime.parse(this);
  int toInt() => int.parse(this);
  double toDouble() => double.parse(this);
  bool isNewLine() => '\n' == substring(length - 1);
}
