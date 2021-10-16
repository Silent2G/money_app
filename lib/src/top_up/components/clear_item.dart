import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/state/keypad_controller.dart';

class ClearItem extends StatefulWidget {
  const ClearItem({
    Key? key,
  }) : super(key: key);

  @override
  ClearItemState createState() {
    return ClearItemState();
  }
}

class ClearItemState extends State<ClearItem> {
  late KeyPadController controller;

  @override
  void initState() {
    controller = Get.find<KeyPadController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
      child: InkWell(
        onTap: () {
          controller.clearDigit();
        },
        child: Container(
          constraints: const BoxConstraints(minHeight: 40.0, minWidth: 80.0),
          padding: const EdgeInsets.only(left: 15),
          child: const Icon(
            Icons.arrow_back_ios,
            size: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
