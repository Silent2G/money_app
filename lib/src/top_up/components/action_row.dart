import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_item.dart';
import 'clear_item.dart';
import 'point_item.dart';

class ActionRow extends StatefulWidget {
  const ActionRow({
    Key? key,
  }) : super(key: key);

  @override
  ActionRowState createState() {
    return ActionRowState();
  }
}

class ActionRowState extends State<ActionRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Expanded(
          child: PointItem(),
        ),
        Expanded(
          child: ButtonItem(label: "0"),
        ),
        Expanded(
          child: ClearItem(),
        )
      ],
    );
  }
}
