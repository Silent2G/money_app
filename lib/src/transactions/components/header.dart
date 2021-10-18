import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          () => Text(
            Util().getCurrencyWithSymbol(controller.balance.value),
            style: const TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
