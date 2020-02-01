import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

extension DateExtension on DateTime {
  String formatString({
    String format,
    String locale = 'en'
  }) {
    var f = 'MM.dd yyyy';
    if (format != null) {
      f = format;
    }
    initializeDateFormatting(locale); // ja_JP
    final formatter = DateFormat(f, locale);
    return formatter.format(this);
  }

  // return this - date
  int diffDays(DateTime date) => toUtc().difference(date.toUtc()).inDays;
  int diffHours(DateTime date) => toUtc().difference(date.toUtc()).inHours;
  int diffMinutes(DateTime date) => toUtc().difference(date.toUtc()).inMinutes;
  int diffSeconds(DateTime date) => toUtc().difference(date.toUtc()).inSeconds;

  // this >= date => true
  // this < date => false
  bool isCompare(DateTime date) => toUtc().compareTo(date.toUtc()) != -1 || false;
}