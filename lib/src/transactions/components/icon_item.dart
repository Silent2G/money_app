import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconItem extends StatefulWidget {
  const IconItem(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.route})
      : super(key: key);

  final String imagePath;
  final String title;
  final String route;

  @override
  IconItemState createState() {
    return IconItemState();
  }
}

class IconItemState extends State<IconItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          Get.toNamed(widget.route);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.imagePath,
              width: 60,
              height: 60,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
