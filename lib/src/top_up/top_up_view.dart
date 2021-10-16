import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../components/color_button.dart';
import '../core/state/top_up_controller.dart';
import '../scaffold.dart';
import 'components/input.dart';
import 'components/keypad.dart';

class TopUpView extends StatefulWidget {
  const TopUpView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TopUpController controller;

  @override
  State createState() {
    return TopUpViewState();
  }
}

class TopUpViewState extends State<TopUpView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      key: UniqueKey(),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          key: UniqueKey(),
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140),
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
              height: 40,
            ),
            const Input(),
            const SizedBox(
              height: 70,
            ),
            Keypad(
              key: UniqueKey(),
            ),
            const SizedBox(
              height: 75,
            ),
            ColorButton(
              key: UniqueKey(),
              title: AppLocalizations.of(context)!.next,
              width: 200,
              fontSize: 18,
              borderRadius: 6,
              function: () {},
            )
          ],
        ),
      ),
    );
  }
}
