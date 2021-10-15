import 'transaction.dart';

class TopUp extends Transaction {
  TopUp({
    required id,
    title = "Top Up",
    required sum,
    required dateTime,
  }) : super(id, title, sum, dateTime);
}
