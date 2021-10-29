import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../core/state/date_block_controller.dart';
import '../../models/date_block.dart';

class DateBlock extends GetView<DateBlockController> {
  const DateBlock({
    Key? key,
    required this.dataBlock,
  }) : super(key: key);

  final DataBlock dataBlock;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            controller.createDayOrDate(dataBlock.dateTime),
            style: const TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: kBlackColor4),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: controller.getPaymentItems(dataBlock.paymentList),
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: controller.getTopUpItems(dataBlock.topUpList),
          ),
        )
      ],
    );
  }
}
