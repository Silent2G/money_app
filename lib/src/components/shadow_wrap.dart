import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShadowWrap extends StatelessWidget {
  final Widget child;
  final double? spreadRadius;
  final double? blurRadius;
  final double? borderRadius;

  const ShadowWrap(
      {Key? key,
        required this.child,
        this.spreadRadius,
        this.blurRadius,
        this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: spreadRadius ?? -5,
          blurRadius: blurRadius ?? 12,
        )
      ]),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadius != null
                ? BorderRadius.circular(borderRadius!)
                : BorderRadius.circular(0),
          ),
          child: child),
    );
  }
}
