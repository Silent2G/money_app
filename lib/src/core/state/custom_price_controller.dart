import 'package:get/get.dart';

class CustomPriceController extends GetxController {
  RxString price = '0'.obs;
  RxString decimal = '00'.obs;

  void parsePriceSymbol(String text) {
    String result = text.substring(1);
    List<String> list = result.split(".");
    price.value = list[0];
    decimal.value = list[1];
  }

  void parsePrice(String text) {
    List<String> list = text.split(".");
    price.value = list[0];
    decimal.value = list[1];
  }
}