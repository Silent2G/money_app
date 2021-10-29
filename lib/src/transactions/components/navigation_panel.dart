import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../components/shadow_wrap.dart';
import '../../constants/assets_paths.dart';
import '../../constants/routing.dart';
import 'icon_item.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ShadowWrap(
        borderRadius: 10,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconItem(
                imagePath: kPhonePath,
                title: AppLocalizations.of(context)!.pay,
                route: kPayRoute,
              ),
              IconItem(
                  imagePath: kWalletPath,
                  title: AppLocalizations.of(context)!.top_up,
                  route: kTopUpRoute
              )
            ],
          ),
        ),
      ),
    );
  }
}
