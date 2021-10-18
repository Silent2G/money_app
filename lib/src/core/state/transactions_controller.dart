import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../models/date_block.dart';
import '../../models/payment.dart';
import '../../models/top_up.dart';
import '../../models/transaction.dart';

class TransactionsController extends GetxController {
  TransactionsController() {
    initData();
  }

  List<Transaction> transactionList = [
    TopUp(
      id: 0235,
      sum: 150.00,
      dateTime: DateTime.now().subtract(const Duration(minutes: 2)),
    ),
    Payment(
      id: 1346,
      title: "eBay",
      sum: 32.00,
      dateTime: DateTime.now().subtract(const Duration(minutes: 2)),
    ),
    Payment(
      id: 2567,
      title: "Merton Council",
      sum: 65.00,
      dateTime: DateTime.now().subtract(const Duration(minutes: 2)),
    ),
    TopUp(
      id: 3234,
      sum: 200.00,
      dateTime: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Payment(
      id: 412312243,
      title: "Amazon",
      sum: 32.00,
      dateTime: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Payment(
      id: 5679,
      title: "Jhon Snow",
      sum: 1400.00,
      dateTime: DateTime.now().subtract(const Duration(days: 1)),
    ),
    TopUp(
      id: 6235,
      sum: 330.00,
      dateTime: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Payment(
      id: 7346,
      title: "Ali-express",
      sum: 36.00,
      dateTime: DateTime.now().subtract(const Duration(days: 2)),
    ),
  ];

  List<DataBlock> dataList = [];
  late RxDouble balance;

  void initData() {
    dataList = createDateBlockList(transactionList);
    balance = getBalance(transactionList).obs;
  }
  
  double getBalance(List<Transaction> list) {
    double sum = 0;
    list.forEach((element) {
      sum += element.sum;
    });
    return sum;
  }

  void addTransaction(Transaction object) {
    transactionList.add(object);
  }

  void updateBalance() {
    balance.value = getBalance(transactionList);
  }

  void updateList() {
    dataList = createDateBlockList(transactionList);
    update();
  }

  // group objects by date
  List<DataBlock> createDateBlockList(List<Transaction> list) {
    List<DataBlock> result = [];
    List<Transaction> buffer = [...list];
    Map<int, List<Transaction>> map = {};

    for (int i = list.length - 1; i >= 0; i--) {
      Transaction transaction = list[i];

      // search transaction object if it exist in buffer list
      if (isIdExist(transaction.id, buffer)) {
        List<Transaction> dateList = [];
        String dateString = DateFormat("d MMMM").format(transaction.dateTime);

        for (int j = buffer.length - 1; j >= 0; j--) {
          // add object to dateList if dates comparing
          if (dateString == DateFormat("d MMMM").format(buffer[j].dateTime)) {
            dateList.add(buffer[j]);
            buffer.removeAt(j);
          }

          map[transaction.id] = dateList;
        }
      }
    }

    result = convertMapIntoList(map);

    return result;
  }

  bool isIdExist(int id, List<Transaction> list) {
    for (int i = 0; i < list.length; i++) {
      if (list[i].id == id) {
        return true;
      }
    }
    return false;
  }

  List<DataBlock> convertMapIntoList(Map<int, List<Transaction>> map) {
    List<DataBlock> result = [];
    result = map.entries.map<DataBlock>((entry) {
      List<Transaction> list = entry.value;

      List<Payment> paymentList = [];
      List<TopUp> topUpList = [];

      list.forEach((element) {
        if (element is Payment) {
          paymentList.add(element);
        } else if (element is TopUp) {
          topUpList.add(element);
        }
      });

      paymentList.sort(
          (a, b) => a.title.toUpperCase().compareTo(b.title.toUpperCase()));
      topUpList.sort(
          (a, b) => a.sum.compareTo(b.sum));

      return DataBlock(
          id: entry.key,
          dateTime: list.first.dateTime,
          paymentList: paymentList,
          topUpList: topUpList);
    }).toList();

    result.sort((a, b) => b.dateTime.compareTo(a.dateTime));

    return result;
  }
}
