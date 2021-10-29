import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_item.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({
    Key? key,
    required this.valueOne,
    required this.valueTwo,
    required this.valueThree
  }) : super(key: key);

  final String valueOne;
  final String valueTwo;
  final String valueThree;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: ButtonItem(label: valueOne),
        ),
        Expanded(
          child: ButtonItem(label: valueTwo),
        ),
        Expanded(
          child: ButtonItem(label: valueThree),
        ),
      ],
    );
  }
}
