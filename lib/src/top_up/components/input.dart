import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        child: TextFormField(
          controller: controller.textEditingController,
          enabled: false,
          style: const TextStyle(
            fontSize: 42,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none),
        ),
      ),
    );
  }
}
