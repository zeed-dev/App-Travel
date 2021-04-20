import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Note: Color
Color mainColor = Color(0xff432FB3);
Color darkPurpelColor = Color(0xff282948);
Color purpelColor = Color(0xff6A5EE8);
Color greyColor = Color(0xff515151);
Color blackColor = Colors.black;

// Note: margin
double edgs = 30;

// Note: TextStyle
TextStyle darkPurpelFontStyle = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: darkPurpelColor,
);

TextStyle boldDarkPurpelFontStyle = GoogleFonts.poppins(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: darkPurpelColor,
);

TextStyle greyFontStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: greyColor,
);

TextStyle blackFontStyle = GoogleFonts.poppins(
  fontSize: 16,
  color: blackColor,
);

TextStyle whiteFontStyle = GoogleFonts.poppins(
  fontSize: 16,
  color: Colors.white,
);
