import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:money_app/src/core/state/date_block_controller.dart';

import 'core/state/transactions_controller.dart';

class GetControllersSetup extends StatelessWidget {
  const GetControllersSetup({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TransactionsController());
    Get.lazyPut(() => DateBlockController());
    return body;
  }
}
