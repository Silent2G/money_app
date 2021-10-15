import 'transaction.dart';

class Payment extends Transaction {
  Payment({
    required id,
    required title,
    required sum,
    required dateTime,
  }) : super(id, title, sum, dateTime);
}
