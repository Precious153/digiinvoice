import 'package:flutter/material.dart';

Widget CustomBbox({
  final double? height,
  final double? width,
  final Color? color,
  final BorderRadius? radius,
  final BoxShape? shapes,
  final Widget? widget,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: radius,
      shape: shapes ?? BoxShape.rectangle,
    ),
    child: widget,
  );
}
