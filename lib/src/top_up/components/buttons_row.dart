import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_item.dart';

class ButtonsRow extends StatefulWidget {
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
  ButtonsRowState createState() {
    return ButtonsRowState();
  }
}

class ButtonsRowState extends State<ButtonsRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: ButtonItem(label: widget.valueOne),
        ),
        Expanded(
          child: ButtonItem(label: widget.valueTwo),
        ),
        Expanded(
          child: ButtonItem(label: widget.valueThree),
        ),
      ],
    );
  }
}
