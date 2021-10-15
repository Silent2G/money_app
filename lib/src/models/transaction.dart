abstract class Transaction {
  final int id;
  final String title;
  final String sum;
  final DateTime dateTime;

  Transaction(this.id, this.title, this.sum, this.dateTime);
}