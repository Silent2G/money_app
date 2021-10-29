import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/state/transactions_controller.dart';
import '../../models/date_block.dart';
import 'date_block.dart';

class TransActionList extends StatelessWidget {
  const TransActionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionsController>(
      init: TransactionsController(),
      builder: (TransactionsController controller) {
        return ListView.builder(
            controller: ScrollController(),
            padding: EdgeInsets.zero,
            itemCount: controller.dataList.length,
            itemBuilder: (BuildContext context, int index) {
              if (controller.dataList.isEmpty) {
                return Container();
              }

              DataBlock dataBlock = controller.dataList[index];

              return DateBlock(dataBlock: dataBlock);
            });
      },
    );
  }
}
