import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

import '../components/app_text_input.dart';
import '../components/back_wrap.dart';
import '../components/color_button.dart';
import '../constants/routing.dart';
import '../core/state/keypad_controller.dart';
import '../core/state/transactions_controller.dart';
import '../core/state/who_controller.dart';
import '../scaffold.dart';

class WhoView extends StatefulWidget {
  const WhoView({
    Key? key,
  }) : super(key: key);

  @override
  State createState() {
    return WhoViewState();
  }
}

class WhoViewState extends State<WhoView> {
  late WhoController whoController;
  late KeyPadController keyPadController;
  late TransactionsController trController;

  @override
  void initState() {
    whoController = Get.find<WhoController>();
    keyPadController = Get.find<KeyPadController>();
    trController = Get.find<TransactionsController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const border = UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2,
      ),
    );

    return AppScaffold(
      body: BackWrap(
        body: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text(
                  AppLocalizations.of(context)!.to_who,
                  style: const TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  child: AppTextInput(
                    controller: whoController.controller,
                    enabled: true,
                    onChanged: whoController.getOnChangedFunction(),
                    decoration: const InputDecoration(
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                    textStyle: const TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Obx(
                () => ColorButton(
                  title: AppLocalizations.of(context)!.pay,
                  width: 200,
                  fontSize: 18,
                  borderRadius: 6,
                  function: whoController.isFieldEmpty.value
                      ? null
                      : () {
                          // create transaction
                          trController.addTransaction(whoController
                              .createPayment(keyPadController.getAmount()));

                          // update UI
                          trController.updateBalance();
                          trController.updateList();

                          // clear text fields
                          keyPadController.clearField();
                          whoController.clearField();

                          Get.offAllNamed(kTransactionsRoute);
                        },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
