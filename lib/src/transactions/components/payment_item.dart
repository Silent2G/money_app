import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/custom_price.dart';
import '../../constants/assets_paths.dart';
import '../../core/utils/util.dart';

class PaymentItem extends StatefulWidget {
  const PaymentItem({
    Key? key,
    required this.title,
    required this.sum,
  }) : super(key: key);

  final String title;
  final double sum;

  @override
  PaymentItemState createState() {
    return PaymentItemState();
  }
}

class PaymentItemState extends State<PaymentItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Image.asset(
            kPaymentItemPath,
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
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          CustomPrice(
            key: UniqueKey(),
            text: Util().getCurrency(widget.sum),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
