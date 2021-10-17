import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../models/payment.dart';
import '../utils/util.dart';

class WhoController extends GetxController {
  TextEditingController controller = TextEditingController(text: '');

  void clearField() {
    controller.text = '';
    isFieldEmpty.value = true;
  }

  RxBool isFieldEmpty = true.obs;

  Function(String) getOnChangedFunction() {
    return (String value) {
      isFieldEmpty.value = value.isEmpty;
    };
  }

  Payment createPayment(double? amount) {
    return Payment(
      id: Util().createRandomId(),
      title: controller.text,
      sum: amount,
      dateTime: DateTime.now(),
    );
  }
}
