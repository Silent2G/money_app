import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class KeyPadController extends GetxController {
  final textEditingController = TextEditingController(text: '');

  void changeTextData(String text) {
    textEditingController.text += text;
    update();
  }

  void clearDigit() {
    String string = textEditingController.text;
    if (string.isNotEmpty) {
      string = string.substring(0, string.length - 1);
      textEditingController.text = string;
    }
    update();
  }
}
