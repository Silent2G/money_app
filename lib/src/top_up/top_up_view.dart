import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/state/top_up_controller.dart';

class TopUpView extends StatefulWidget {
  const TopUpView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TopUpController controller;

  @override
  State createState() {
    return TopUpViewState();
  }
}

class TopUpViewState extends State<TopUpView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
