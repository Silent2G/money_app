import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/assets_paths.dart';
import '../../core/state/transactions_controller.dart';
import '../../core/utils/util.dart';

class TopUpItem extends StatefulWidget {
  const TopUpItem({
    Key? key,
    required this.title,
    required this.sum,
  }) : super(key: key);

  final String title;
  final double sum;

  @override
  TopUpItemState createState() {
    return TopUpItemState();
  }
}

class TopUpItemState extends State<TopUpItem> {
  late TransactionsController controller;

  @override
  void initState() {
    controller = Get.find<TransactionsController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Image.asset(
            kTopUpItemPath,
            width: 30,
            height: 30,
          ),
          const SizedBox(
            width: 7,
          ),
          Expanded(
            child: Text(
              widget.title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            "+${Util().getCurrency(widget.sum)}",
            style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).primaryColor,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
