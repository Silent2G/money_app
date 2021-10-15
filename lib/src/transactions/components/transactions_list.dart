import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../models/date_block.dart';
import '../../models/payment.dart';
import '../../models/top_up.dart';
import '../../models/transaction.dart';
import '../../core/state/transactions_controller.dart';
import 'payment_item.dart';
import 'top_up_item.dart';

class TransActionList extends StatefulWidget {
  const TransActionList({
    Key? key,
  }) : super(key: key);

  @override
  TransActionListState createState() {
    return TransActionListState();
  }
}

class TransActionListState extends State<TransActionList> {
  late TransactionsController controller;
  List<Transaction> list = [];
  List<DataBlock> dataList = [];

  @override
  void initState() {
    controller = Get.find<TransactionsController>();
    list = controller.transactionList;
    dataList = controller.createDateBlockList(list);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          if (list.isEmpty) {
            return Container();
          }

          Transaction transaction = list[index];

          if (transaction is Payment) {
            Payment payment = transaction;
            return PaymentItem(
              key: UniqueKey(),
              title: payment.title,
              sum: payment.sum,
            );
          } else {
            TopUp topUp = transaction as TopUp;
            return TopUpItem(
              key: UniqueKey(),
              title: topUp.title,
              sum: topUp.sum,
            );
          }
        });
  }
}
