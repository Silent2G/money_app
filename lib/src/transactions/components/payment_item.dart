import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/assets_paths.dart';


class PaymentItem extends StatefulWidget {
  const PaymentItem({
    Key? key,
    required this.title,
    required this.sum,
  }) : super(key: key);

  final String title;
  final String sum;

  @override
  PaymentItemState createState() {
    return PaymentItemState();
  }
}

class PaymentItemState extends State<PaymentItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            kPaymentItemPath,
            width: 30,
            height: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              widget.title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            widget.sum,
            style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
