import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'action_row.dart';
import 'buttons_row.dart';

class Keypad extends StatelessWidget {
  const Keypad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: const <Widget>[
            ButtonsRow(
              valueOne: "1",
              valueTwo: "2",
              valueThree: "3",
            ),
            ButtonsRow(
              valueOne: "4",
              valueTwo: "5",
              valueThree: "6",
            ),
            ButtonsRow(
              valueOne: "7",
              valueTwo: "8",
              valueThree: "9",
            ),
            ActionRow()
          ],
        )
      ],
    );
  }
}
