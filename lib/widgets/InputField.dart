import 'package:flutter/material.dart';

Widget InputField({
  final TextEditingController? controller,
  final TextInputType? keyboard,
  final Widget? label,
  final String? hint,
  final Icon? icon,
  final String? Function(String?)? validator,
  final Color? borderColor,
  final Color? color,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboard ?? TextInputType.text,
    validator: validator,
    decoration: InputDecoration(
      label: label,
      hintText: hint,
      filled: true,
      fillColor: color,
      suffixIcon: icon,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor ?? Colors.blueAccent,
        ),
      ),
    ),
  );
}
