import 'package:intl/intl.dart';

extension NumExtension on int {
  String commaFormat() => NumberFormat().format(this);
}
