import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/app_text_input.dart';
import '../../core/state/keypad_controller.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<KeyPadController>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        child: AppTextInput(
          controller: controller.textEditingController,
        ),
      ),
    );
  }
}
