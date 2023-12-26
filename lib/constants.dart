// ignore_for_file: unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme = TextTheme(
    displayLarge: GoogleFonts.robotoSlab(
      fontSize: 35.sp,
      fontWeight: FontWeight.w900,
      color: Colors.black,
    ),
    bodySmall: GoogleFonts.robotoSlab(
      fontSize: 16.sp,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.robotoSlab(
      fontSize: 16.sp,
      color: Colors.white,
    ),
    titleSmall: GoogleFonts.robotoSlab(
      fontSize: 16.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: GoogleFonts.robotoSlab(
      color: Colors.black, fontSize: 18.sp,
    ),
    labelLarge: GoogleFonts.robotoSlab(
      color: Colors.black, fontSize: 30.sp,
      fontWeight: FontWeight.w700,
    ),
     labelMedium: GoogleFonts.inter(
      color: Colors.black, fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    ),
    );

ButtonStyle btnStyle(Color txtColor, Color bgColor) {
  return ButtonStyle(
    foregroundColor: MaterialStateProperty.all(txtColor),
    backgroundColor: MaterialStateProperty.all(bgColor),
    minimumSize: MaterialStateProperty.all(Size(360, 53)),
    textStyle: MaterialStateProperty.all(
      TextStyle(fontSize: 14, fontFamily: 'Roboto'),
    ),
  );
}
