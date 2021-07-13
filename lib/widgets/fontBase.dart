import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

TextStyle normalFont20(Color color) {
  return GoogleFonts.montserrat(
    color: color,
    fontSize: 8.sp,
  );
}

TextStyle boldFont15(
  Color color,
) {
  return GoogleFonts.montserrat(
    color: color,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
  );
}