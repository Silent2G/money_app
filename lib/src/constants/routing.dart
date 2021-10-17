import 'package:flutter/widgets.dart';

import '../top_up/pay_view.dart';
import '../top_up/top_up_view.dart';
import '../transactions/transactions_view.dart';
import '../who/who_view.dart';

const kTransactionsRoute = '/';
const kPayRoute = '/pay';
const kTopUpRoute = '/home';
const kWhoRoute = '/who';

const kRoutesMapping = <String, Widget>{
  kTransactionsRoute: TransactionsView(),
  kPayRoute: PayView(),
  kTopUpRoute: TopUpView(),
  kWhoRoute: WhoView(),
};
