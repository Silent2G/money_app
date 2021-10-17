import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppTextInput extends StatelessWidget {
  final TextEditingController controller;
  final bool? enabled;
  final InputDecoration? decoration;
  final TextStyle? textStyle;
  final Function(String)? onChanged;

  const AppTextInput({
    Key? key,
    required this.controller,
    this.enabled,
    this.decoration,
    this.textStyle,
    this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled ?? false,
      onChanged: onChanged,
      style: textStyle ?? const TextStyle(
        fontSize: 42,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
      cursorColor: Colors.white,
      decoration: decoration ??
          const InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none),
    );
  }
}
