import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/state/custom_price_controller.dart';

class CustomPriceSymbol extends StatefulWidget {
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
  CustomPriceSymbolState createState() {
    return CustomPriceSymbolState();
  }
}

class CustomPriceSymbolState extends State<CustomPriceSymbol> {
  late CustomPriceController controller;

  @override
  void initState() {
    controller = CustomPriceController();
    controller.parsePriceSymbol(widget.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: widget.symbol,
            style: TextStyle(
                fontSize: widget.symbolFontSize,
                fontWeight: FontWeight.w400,
                color: widget.color,
                fontStyle: FontStyle.normal),
          ),
          TextSpan(
            text: controller.price.value,
            style: TextStyle(
                fontSize: widget.fontSizePrice,
                fontWeight: widget.priceFontWeight ?? FontWeight.w600,
                color: widget.color,
                fontStyle: FontStyle.normal),
          ),
          TextSpan(
              text: ".${controller.decimal.value}",
              style: TextStyle(
                  fontSize: widget.decimalFontSize,
                  fontWeight: FontWeight.w400,
                  color: widget.color,
                  fontStyle: FontStyle.normal)),
        ],
      ),
    );
  }
}
