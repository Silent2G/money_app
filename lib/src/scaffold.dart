import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'transactions/components/money_app_title.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          body,
          const SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: MoneyAppTitle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
