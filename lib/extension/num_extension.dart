import 'package:intl/intl.dart';

extension NumExtension on num {
  String commaFormat() => NumberFormat().format(this);
}