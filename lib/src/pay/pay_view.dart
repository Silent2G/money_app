import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/state/pay_controller.dart';

class PayView extends StatefulWidget {
  const PayView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PayController controller;

  @override
  State createState() {
    return PayViewState();
  }
}

class PayViewState extends State<PayView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
