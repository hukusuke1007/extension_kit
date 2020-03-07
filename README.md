# extension_kit

This is Dart extension kit. If this plugin is imported your project, it enable to use various extension function.

https://pub.dev/packages/extension_kit

## Installation

Add this to your package's pubspec.yaml file:

```
dependencies:
  extension_kit:
```

## Feature list

Implementation extension's list. It will be create more extension feature in future.

- [int](#int)
- [double](#double)
- [num](#num)
- [String](#String)
- [Date](#Date)
- [List](#List)
- [Context](#Context)


## Usage

Import extension_kit.

```dart
import 'package:extension_kit/extension_kit.dart';
```

### int

millisecondsToDate

```dart
print(1601996400000.millisecondsToDate()); // DateTime(2020, 10, 7)
```

### double

roundWithDigit

```dart
const value1 = 10.45678;
print(value1.roundWithDigit(1));   // 10.5
print(value1.roundWithDigit(2));   // 10.46
print(value1.roundWithDigit(3));   // 10.457
print(value1.roundWithDigit(0));   // 10.45678
print(value1.roundWithDigit(-1));  // 10.45678

const value2 = 10.434321;
print(value2.roundWithDigit(1));   // 10.4
print(value2.roundWithDigit(2);    // 10.43
print(value2.roundWithDigit(3));   // 10.434
```

### num

commaFormat

```dart
print(100.commaFormat());         // '100'
print(1000.commaFormat());        // '1,000'
print(1000000.commaFormat());     // '1,000,000'
print(1000000.123.commaFormat()); // '1,000,000.123'
```

### String

toDate

```dart
print('20201008'.toDate());       // DateTime(2020, 10, 8)
```

toInt

```dart
print('123'.toInt());             // 123
```

toDouble

```dart
print('123.4567'.toDouble());     // 123.4567
```

isNewLine

```dart
print('\n'.isNewLine());          // true
print('test'.isNewLine());        // false
```

### Date

formatString

```dart
final date = DateTime(2020, 10, 7);
print(date.formatString());                     // '10.07 2020'
print(date.formatString(format: 'yyyy/MM/dd')); // '2020/10/07'
```

diffDays, diffHours, diffMinutes, diffSeconds

```dart
final dateA = DateTime(2020, 10, 7, 20, 10, 30);
final dateB = DateTime(2020, 8, 2, 10, 5, 10);
final dateC = DateTime(2020, 10, 7, 20, 10, 30);

// dateA - dateB
print(dateA.diffDays(dateB));       // 66
print(dateA.diffHours(dateB));      // 1594
print(dateA.diffMinutes(dateB));    // 95645
print(dateA.diffSeconds(dateB));    // 5738720
```

isCompare

```dart
// dateA >= dateB => true
// dateA < dateB => false
final dateA = DateTime(2020, 10, 7, 20, 10, 30);
final dateB = DateTime(2020, 8, 2, 10, 5, 10);
final dateC = DateTime(2020, 10, 7, 20, 10, 30);

print(dateA.isCompare(dateB));  // true
print(dateA.isCompare(dateC));  // true
print(dateB.isCompare(dateA));  // false
```

### List

max

```dart
print([10, 2, 3].max());      // 10
print([0.3, 1.2, 0.8].max()); // 1.2
```

### Context

isDark

```dart
final isDark = context.isDark; // Dark mode => true, not dark mode => false
```

deviceWidth, deviceHeight

```dart
final width = context.deviceWidth; // device width from MediaQuery.of(this).size
final height = context.deviceHeight; // device height from MediaQuery.of(this).size
```

hideKeyboard

```dart
GestureDetector(
  child: ...,
  onTap: () => context.hideKeyboard(),
),
```