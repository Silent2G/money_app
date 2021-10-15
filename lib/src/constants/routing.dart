import 'package:flutter/widgets.dart';

import '../core/state/pay_controller.dart';
import '../pay/pay_view.dart';
import '../core/state/top_up_controller.dart';
import '../top_up/top_up_view.dart';
import '../core/state/transactions_controller.dart';
import '../transactions/transactions_view.dart';



const kTransactionsRoute = '/';
const kPayRoute = '/pay';
const kTopUpRoute = '/home';

final kRoutesMapping = <String, Widget>{
  kTransactionsRoute: TransactionsView(
    controller: TransactionsController(),
  ),
  kPayRoute: PayView(
    controller: PayController(),
  ),
  kTopUpRoute: TopUpView(
    controller: TopUpController(),
  ),
};
