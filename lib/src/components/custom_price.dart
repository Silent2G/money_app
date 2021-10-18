import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/state/custom_price_controller.dart';

class CustomPrice extends StatefulWidget {
  const CustomPrice({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  CustomPriceState createState() {
    return CustomPriceState();
  }
}

class CustomPriceState extends State<CustomPrice> {
  late CustomPriceController controller;

  @override
  void initState() {
    controller = CustomPriceController();
    controller.parsePrice(widget.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: controller.price.value,
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w400,
                color: widget.color,
                fontStyle: FontStyle.normal),
          ),
          TextSpan(
              text: ".${controller.decimal.value}",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: widget.color,
                  fontStyle: FontStyle.normal)),
        ],
      ),
    );
  }
}
