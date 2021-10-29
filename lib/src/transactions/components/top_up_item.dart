import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/custom_price_symbol.dart';
import '../../constants/assets_paths.dart';
import '../../core/state/transactions_controller.dart';
import '../../core/utils/util.dart';

class TopUpItem extends GetView<TransactionsController> {
  const TopUpItem({
    Key? key,
    required this.title,
    required this.sum,
  }) : super(key: key);

  final String title;
  final double sum;

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
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          CustomPriceSymbol(
            text: "+${Util().getCurrency(sum)}",
            symbolFontSize: 19,
            fontSizePrice: 19,
            decimalFontSize: 16,
            symbol: "+",
            color: Theme.of(context).primaryColor,
            priceFontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }
}
