import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/state/transactions_controller.dart';
import '../../models/date_block.dart';
import '../../models/transaction.dart';
import 'date_block.dart';

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
        controller: ScrollController(),
        padding: EdgeInsets.zero,
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          if (dataList.isEmpty) {
            return Container();
          }

          DataBlock dataBlock = dataList[index];

          return DateBlock(dataBlock: dataBlock);
        });
  }
}
