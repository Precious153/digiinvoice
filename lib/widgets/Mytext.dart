import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget MyText({
  final String? title,
  final double? size,
  final Color? color,
  final FontWeight? weight,
}) {
  return Text(
    title!,
    style: GoogleFonts.poppins(
      fontWeight: weight,
      color: color,
      fontSize: size,
    ),
  );
}
