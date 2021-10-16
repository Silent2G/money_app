import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MoneyAppTitle extends StatelessWidget {
  const MoneyAppTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.money_app,
      style: const TextStyle(
          fontStyle: FontStyle.normal,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white),
    );
  }
}
