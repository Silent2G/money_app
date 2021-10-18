import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/custom_price_symbol.dart';
import '../../core/state/transactions_controller.dart';
import '../../core/utils/util.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  HeaderState createState() {
    return HeaderState();
  }
}

class HeaderState extends State<Header> {
  late TransactionsController controller;

  @override
  void initState() {
    controller = Get.find<TransactionsController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Obx(
          () => CustomPriceSymbol(
            text: Util().getCurrencyWithSymbol(
              controller.balance.value,
            ),
            symbolFontSize: 24,
            fontSizePrice: 42,
            decimalFontSize: 24,
            symbol: '£',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
