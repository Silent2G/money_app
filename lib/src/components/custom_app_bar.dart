import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final SystemUiOverlayStyle brightness;
  final Color? backgroundColor;

  const CustomAppBar({
    Key? key,
    this.brightness = SystemUiOverlayStyle.light,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(0.0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0.0), // here the desired height
      child: AppBar(
        systemOverlayStyle: brightness,
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
    );
  }
}
