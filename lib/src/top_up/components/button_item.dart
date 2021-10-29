import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/state/keypad_controller.dart';

class ButtonItem extends GetView<KeyPadController> {
  const ButtonItem({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
      child: InkWell(
        onTap: () {
          controller.changeTextData(label);
        },
        child: Container(
          constraints: const BoxConstraints(minHeight: 40.0, minWidth: 80.0),
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          child: Text(
            label.toString(),
            style: const TextStyle(
                fontSize: 28.0,
                color: Colors.white,
                fontStyle: FontStyle.normal),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
