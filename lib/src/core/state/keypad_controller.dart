import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../models/top_up.dart';
import '../utils/util.dart';

class KeyPadController extends GetxController {
  final textEditingController = TextEditingController(text: '');

  void changeTextData(String text) {
    if (!Util().checkIsDecimalExist(textEditingController.text) &&
        textEditingController.text.length < 10) {
      textEditingController.text += text;
    }
    updateViewString();
    empty();
    update();
  }

  RxString viewString = '£0.00'.obs;

  void updateViewString() {
    viewString.value = Util().getCurrencyFromString(textEditingController.text);
  }

  RxBool isFieldEmpty = true.obs;

  void empty() {
    isFieldEmpty.value = textEditingController.text.isEmpty;
  }

  void clearField() {
    textEditingController.text = '';
    viewString.value = '£0.00';
    empty();
  }

  bool addPointCondition() {
    return textEditingController.text.isNotEmpty &&
        !textEditingController.text.contains(".");
  }

  double? getAmount() {
    return double.tryParse(textEditingController.text);
  }

  void clearDigit() {
    String string = textEditingController.text;
    if (string.isNotEmpty) {
      string = string.substring(0, string.length - 1);
      textEditingController.text = string;
    }
    updateViewString();
    empty();
    update();
  }

  TopUp createTopUp() {
    return TopUp(
        id: Util().createRandomId(),
        sum: getAmount(),
        dateTime: DateTime.now());
  }
}
