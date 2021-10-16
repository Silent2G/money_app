import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/state/keypad_controller.dart';

class ButtonItem extends StatefulWidget {
  const ButtonItem({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  ButtonItemState createState() {
    return ButtonItemState();
  }
}

class ButtonItemState extends State<ButtonItem> {
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
          controller.textEditingController.text += widget.label;
        },
        child: Container(
          constraints: const BoxConstraints(minHeight: 40.0, minWidth: 80.0),
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          child: Text(
            widget.label.toString(),
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
