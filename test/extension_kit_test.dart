import 'package:flutter_test/flutter_test.dart';
import 'package:extension_kit/extension_kit.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
  });

  tearDown(() {

  });

  test('Int extension test.', () async {
    expect(1601996400000.millisecondsToDate(), DateTime(2020, 10, 7));
  });

  test('Double extension test.', () async {
    const value1 = 10.45678;
    expect(value1.roundWithDigit(1), 10.5);
    expect(value1.roundWithDigit(2), 10.46);
    expect(value1.roundWithDigit(3), 10.457);
    expect(value1.roundWithDigit(0), 10.45678);
    expect(value1.roundWithDigit(-1), 10.45678);

    const value2 = 10.434321;
    expect(value2.roundWithDigit(1), 10.4);
    expect(value2.roundWithDigit(2), 10.43);
    expect(value2.roundWithDigit(3), 10.434);
  });

  test('Num extension test.', () async {
    expect(100.commaFormat(), '100');
    expect(1000.commaFormat(), '1,000');
    expect(1000000.commaFormat(), '1,000,000');
    expect(1000000.123.commaFormat(), '1,000,000.123');
  });

  test('String extension test.', () async {
    expect('20201008'.toDate(), DateTime(2020, 10, 8));

    const intStr = '123';
    expect(intStr.toInt(), 123);

    const doubleStr = '123.4567';
    expect(doubleStr.toDouble(), 123.4567);

    const newLineStr = '\n';
    expect(newLineStr.isNewLine(), true);

    const notNewLineStr = 'test';
    expect(notNewLineStr.isNewLine(), false);
  });

  test('Date extension test.', () async {
    final date = DateTime(2020, 10, 7);
    expect(date.formatString(), '10.07 2020');
    expect(date.formatString(format: 'yyyy/MM/dd'), '2020/10/07');

    final dateA = DateTime(2020, 10, 7, 20, 10, 30);
    final dateB = DateTime(2020, 8, 2, 10, 5, 10);
    final dateC = DateTime(2020, 10, 7, 20, 10, 30);
    expect(dateA.diffDays(dateB), 66);
    expect(dateA.diffHours(dateB), 1594);
    expect(dateA.diffMinutes(dateB), 95645);
    expect(dateA.diffSeconds(dateB), 5738720);

    expect(dateA.isCompare(dateB), true);
    expect(dateA.isCompare(dateC), true);
    expect(dateB.isCompare(dateA), false);
  });
}