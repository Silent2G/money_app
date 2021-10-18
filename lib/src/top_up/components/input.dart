import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/custom_price_symbol.dart';
import '../../core/state/keypad_controller.dart';

class Input extends StatefulWidget {
  const Input({
    Key? key,
  }) : super(key: key);

  @override
  InputState createState() {
    return InputState();
  }
}

class InputState extends State<Input> {
  late KeyPadController controller;

  @override
  void initState() {
    controller = Get.find<KeyPadController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        child: Obx(
          () => Text(
            controller.viewString.value,
            style: const TextStyle(
              fontSize: 42,
              color: Colors.white,
            ),
          ),
        ),
        // child: Obx(
        //   () => CustomPriceSymbol(
        //     text: controller.viewString.value,
        //     symbolFontSize: 24,
        //     fontSizePrice: 48,
        //     decimalFontSize: 24,
        //     symbol: "£",
        //     color: Colors.white,
        //   ),
        // ),
      ),
    );
  }
}
