import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color.fromRGBO(34, 34, 34, 1);
const secondaryColor = Colors.white;
const therdlyColor = Colors.black;
const gradientFirstColor = Color.fromARGB(255, 29, 29, 29);
const gradientSecondColor = Color.fromARGB(255, 43, 43, 43);

TextStyle get subHeadingStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      color: Color.fromRGBO(62, 62, 62, 1),
      fontSize: 20,
      fontWeight: FontWeight.bold,

    )
  );
}

TextStyle get headingStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,

    )
  );
}

