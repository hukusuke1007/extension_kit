import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

extension DateExtension on DateTime {
  String format({String format}) {
    var f = 'MM.dd yyyy';
    if (format != null) {
      f = format;
    }
    initializeDateFormatting('ja_JP');
    final formatter = DateFormat(f, 'ja_JP');
    return formatter.format(this);
  }
}

class DateHelper {

  static String formatYYYYMMddHHmm(DateTime date) => DateHelper.format(date, dayOfWeek: false, second: false);
  static String format(DateTime date, {
    bool year = true,
    bool month = true,
    bool day = true,
    bool dayOfWeek = true,
    bool hour = true,
    bool minute = true,
    bool second = true,
  }) {
    var format = '';
    if (year) {
      format += 'yyyy';
    }
    if (month) {
      format += '/MM';
    }
    if (day) {
      format += '/dd';
    }
    if (dayOfWeek) {
      format += '(E)';
    }
    if (hour) {
      format += ' HH';
    }
    if (minute) {
      format += ':mm';
    }
    if (second) {
      format += ':ss';
    }
    initializeDateFormatting('ja_JP');
    final formatter = DateFormat(format, 'ja_JP');
    return formatter.format(date);
  }

  static DateTime milliToDate(int millisecondsSinceEpoch) {
    return DateTime.fromMicrosecondsSinceEpoch(millisecondsSinceEpoch * 1000);
  }

  static String dateToString(DateTime date, String format) {
    return DateFormat(format).format(date);
  }

  static String milliToString(int millisecondsSinceEpoch, String format) {
    return DateFormat(format).format(DateHelper.milliToDate(millisecondsSinceEpoch));
  }

  static DateTime date({int year, int month, int day, int hour = 0, int minute = 0, int second = 0}) {
    final date = DateTime(year, month, day, hour, minute, second);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static DateTime dateOfFirstDay(int year, int month) {
    final date = DateTime(year, month, 1);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static DateTime dateOfLastDay(int year, int month) {
    final date = DateTime(year, month + 1, 0);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static DateTime dateOfNowFirstDay() {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, 1);
    return date.add(date.timeZoneOffset).toUtc();
  }


  static DateTime dateOfNowFirstTime() {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day, 0);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static DateTime dateOfNowLastTime() {
    final now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day + 1, 0);
    return date.add(date.timeZoneOffset).toUtc();
  }

  static int diffHour(DateTime a, DateTime b) => a.difference(b).inHours;
  static int diffMinutes(DateTime a, DateTime b) => a.difference(b).inMinutes;

  // d1 > d2 => true
  // d1 < d2 => false
  static bool isCompare(DateTime d1, DateTime d2) {
    if(d1.toUtc().compareTo(d2.toUtc()) != -1){
      return true;
    }else{
      return false;
    }
  }

}