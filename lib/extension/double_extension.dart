import 'dart:math';

extension DoubleExtension on double {
  double roundWithDigit(int digit) {
    if (this == null) {
      return 0;
    }
    final digitValue = pow(10, digit);
    return (this * digitValue).roundToDouble() / digitValue;
  }
}