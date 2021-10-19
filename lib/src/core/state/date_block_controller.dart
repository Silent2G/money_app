import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../models/payment.dart';
import '../../models/top_up.dart';
import '../../transactions/components/payment_item.dart';
import '../../transactions/components/top_up_item.dart';
import 'navigation_service_controller.dart';

class DateBlockController extends GetxController {
  String createDayOrDate(DateTime date) {
    DateTime currentDate = DateTime.now();
    int currentDay = int.parse(DateFormat("D").format(currentDate));
    int day = int.parse(DateFormat("D").format(date));

    final service = Get.find<NavigationServiceController>();

    if (currentDay == day) {
      return AppLocalizations.of(service.key.currentState!.context)!.today;
    } else if (currentDay - 1 == day) {
      return AppLocalizations.of(service.key.currentState!.context)!.yesterday;
    } else {
      return DateFormat("d MMMM").format(date);
    }
  }

  List<PaymentItem> getPaymentItems(List<Payment> list) {
    List<PaymentItem> result = [];
    list.forEach((element) {
      result.add(PaymentItem(
        key: UniqueKey(),
        title: element.title,
        sum: element.sum,
      ));
    });
    return result;
  }

  List<TopUpItem> getTopUpItems(List<TopUp> list) {
    List<TopUpItem> result = [];
    list.forEach((element) {
      result.add(TopUpItem(
        key: UniqueKey(),
        title: element.title,
        sum: element.sum,
      ));
    });
    return result;
  }
}
