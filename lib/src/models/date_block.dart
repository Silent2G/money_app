import 'payment.dart';
import 'top_up.dart';

class DataBlock {
  final int id;
  final DateTime dateTime;
  final List<Payment> paymentList;
  final List<TopUp> topUpList;

  DataBlock({
    required this.id,
    required this.dateTime,
    required this.paymentList,
    required this.topUpList,
  });

  @override
  String toString() {
    return 'DataBlock{id: $id, dateTime: $dateTime, paymentList: '
        '$paymentList, topUpList: $topUpList}';
  }
}
