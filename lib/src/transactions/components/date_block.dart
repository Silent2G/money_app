import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../core/state/date_block_controller.dart';
import '../../models/date_block.dart';

class DateBlock extends StatefulWidget {
  const DateBlock({
    Key? key,
    required this.dataBlock,
  }) : super(key: key);

  final DataBlock dataBlock;

  @override
  DateBlockState createState() {
    return DateBlockState();
  }
}

class DateBlockState extends State<DateBlock> {
  late DateBlockController controller;

  @override
  void initState() {
    controller = Get.find<DateBlockController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          controller.createDayOrDate(widget.dataBlock.dateTime),
          style: const TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: kBlackColor4),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: controller.getPaymentItems(widget.dataBlock.paymentList),
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: controller.getTopUpItems(widget.dataBlock.topUpList),
          ),
        )
      ],
    );
  }
}