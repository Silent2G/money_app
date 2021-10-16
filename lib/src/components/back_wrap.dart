import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackWrap extends StatefulWidget {
  const BackWrap({
    Key? key,
  }) : super(key: key);

  @override
  BackWrapState createState() {
    return BackWrapState();
  }
}

class BackWrapState extends State<BackWrap> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.close),
              onPressed: () {},
            )
          ),
        ),
      ],
    );
  }
}
