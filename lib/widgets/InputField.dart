import 'package:digiinvoice/const.dart';
import 'package:flutter/material.dart';

Widget InputField({
  final TextEditingController? controller,
  final TextInputType? keyboard,
  final TextInputAction? inputAction,
  final String? label,
  final String? hint,
  final Widget? icon,
  final String? Function(String?)? validator,
  final Color? borderColor,
  final Color? color,
  final bool? obscure,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboard ?? TextInputType.text,
    textInputAction: inputAction ?? TextInputAction.next,
    validator: validator,
    obscureText: obscure ?? false,
    obscuringCharacter: '*',
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(
        color: textColor,
        fontSize: 15,
      ),
      hintText: hint,
      hintStyle: TextStyle(
        color: textColor,
        fontSize: 15,
      ),
      filled: true,
      fillColor: Colors.white,
      suffixIcon: icon,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: mainColor,
          width: 2,
        ),
      ),
    ),
  );
}
