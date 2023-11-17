import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


TextStyle get subHeadingStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      color: Color.fromRGBO(62, 62, 62, 1),
      fontSize: 16,
      fontWeight: FontWeight.bold,

    )
  );
}

TextStyle get HeadingStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,

    )
  );
}

