import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/state/custom_price_controller.dart';

class CustomPriceSymbol extends StatelessWidget {
  const CustomPriceSymbol({
    Key? key,
    required this.text,
    required this.symbolFontSize,
    required this.fontSizePrice,
    required this.decimalFontSize,
    required this.symbol,
    required this.color,
    this.priceFontWeight,
  }) : super(key: key);

  final String text;
  final double symbolFontSize;
  final double fontSizePrice;
  final double decimalFontSize;
  final String symbol;
  final Color color;
  final FontWeight? priceFontWeight;

  @override
  Widget build(BuildContext context) {
    CustomPriceController controller = CustomPriceController();
    controller.parsePriceSymbol(text);
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: symbol,
            style: TextStyle(
                fontSize: symbolFontSize,
                fontWeight: FontWeight.w400,
                color: color,
                fontStyle: FontStyle.normal),
          ),
          TextSpan(
            text: controller.price.value,
            style: TextStyle(
                fontSize: fontSizePrice,
                fontWeight: priceFontWeight ?? FontWeight.w600,
                color: color,
                fontStyle: FontStyle.normal),
          ),
          TextSpan(
            text: ".${controller.decimal.value}",
            style: TextStyle(
                fontSize: decimalFontSize,
                fontWeight: FontWeight.w400,
                color: color,
                fontStyle: FontStyle.normal),
          ),
        ],
      ),
    );
  }
}
