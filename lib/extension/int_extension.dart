extension IntExtension on int {
  DateTime millisecondsToDate() {
    return DateTime.fromMicrosecondsSinceEpoch(this * 1000);
  }
}