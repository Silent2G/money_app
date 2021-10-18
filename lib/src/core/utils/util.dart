import 'dart:math';

import 'package:money2/money2.dart';

class Util {
  int createRandomId() {
    Random random = Random();
    return random.nextInt(99999999) + 10000000;
  }

  String getCurrencyWithSymbol(double num) {
    final euro = Currency.create(
      'currency',
      2,
      symbol: '£',
      invertSeparators: false,
      pattern: 'S###.##',
    );

    return Money.from(num, euro).toString();
  }

  String getCurrency(double num) {
    final euro = Currency.create(
      'currency',
      2,
      invertSeparators: false,
      pattern: '###.##',
    );

    return Money.from(num, euro).toString();
  }

  String getCurrencyFromString(String text) {
    final euro = Currency.create(
      'currency',
      2,
      symbol: '£',
      invertSeparators: false,
      pattern: 'S###.##',
    );

    double num = double.tryParse(text) ?? 0;

    return Money.from(num, euro).toString();
  }

  bool checkIsDecimalExist(String text) {
    if (text.contains(".")) {
      int pointIndex = text.indexOf(".");
      if ((text.length - pointIndex) > 2) {
        return true;
      }
    }

    return false;
  }
}