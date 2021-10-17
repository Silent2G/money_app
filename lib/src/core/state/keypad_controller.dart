
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../models/top_up.dart';
import '../utils/util.dart';

class KeyPadController extends GetxController {
  final textEditingController = TextEditingController(text: '');

  void changeTextData(String text) {
    if (textEditingController.text.length < 10) {
      textEditingController.text += text;
    }
    isEmpty();
    update();
  }

  RxBool isFieldEmpty = true.obs;

  void isEmpty() {
    isFieldEmpty.value = textEditingController.text.isEmpty;
  }

  void clearField() {
    textEditingController.text = '';
    isEmpty();
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
    isEmpty();
    update();
  }

  TopUp createTopUp() {
    return TopUp(
        id: Util().createRandomId(),
        sum: getAmount(),
        dateTime: DateTime.now());
  }
}
