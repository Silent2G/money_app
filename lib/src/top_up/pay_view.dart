import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

import '../components/back_wrap.dart';
import '../components/color_button.dart';
import '../constants/routing.dart';
import '../core/state/keypad_controller.dart';
import '../scaffold.dart';
import 'components/input.dart';
import 'components/keypad.dart';

class PayView extends GetView<KeyPadController> {
  const PayView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: BackWrap(
        body: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Text(
                      AppLocalizations.of(context)!.how_much,
                      style: const TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontSize: 26,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Input(),
                ],
              ),
              const Keypad(),
              Obx(
                () => ColorButton(
                  title: AppLocalizations.of(context)!.next,
                  width: 200,
                  fontSize: 18,
                  borderRadius: 6,
                  function: controller.isFieldEmpty.value
                      ? null
                      : () {
                          Get.toNamed(kWhoRoute);
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
