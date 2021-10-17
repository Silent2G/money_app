abstract class Transaction {
  final int id;
  final String title;
  final double sum;
  final DateTime dateTime;

  Transaction(this.id, this.title, this.sum, this.dateTime);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Transaction &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          dateTime == other.dateTime;

  @override
  int get hashCode => id.hashCode ^ dateTime.hashCode;
}