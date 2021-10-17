import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constants/assets_paths.dart';

class BackWrap extends StatefulWidget {
  const BackWrap({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

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
        widget.body,
        Align(
          alignment: Alignment.topRight,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 5, right: 20),
              child: IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: SvgPicture.asset(
                  kClosePath,
                  color: Colors.white,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
