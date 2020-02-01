import 'dart:math';

extension DoubleExtension on double {
  double roundWithDigit(int digit) {
    if (digit <= 0) {
      return this;
    }
    final digitValue = pow(10, digit);
    return (this * digitValue).roundToDouble() / digitValue;
  }
}