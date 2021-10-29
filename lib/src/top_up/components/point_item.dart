import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/state/keypad_controller.dart';

class PointItem extends GetView<KeyPadController> {
  const PointItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
      child: InkWell(
        onTap: () {
          if (controller.addPointCondition()) {
            controller.changeTextData(".");
          }
        },
        child: Container(
          constraints: const BoxConstraints(minHeight: 40.0, minWidth: 80.0),
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          child: const Text(
            ".",
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontStyle: FontStyle.normal),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
