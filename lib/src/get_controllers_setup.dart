import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'core/state/date_block_controller.dart';
import 'core/state/keypad_controller.dart';
import 'core/state/transactions_controller.dart';
import 'core/state/who_controller.dart';

class GetControllersSetup extends StatefulWidget {
  const GetControllersSetup({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  GetControllerSetupState createState() {
    return GetControllerSetupState();
  }
}

class GetControllerSetupState extends State<GetControllersSetup> {
  @override
  void initState() {
    Get.lazyPut(() => TransactionsController());
    Get.lazyPut(() => DateBlockController());
    Get.lazyPut(() => KeyPadController());
    Get.lazyPut(() => WhoController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.body;
  }
}
