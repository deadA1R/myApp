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
      color: primaryColor,
      fontWeight: FontWeight.bold,

    )
  );
}

TextStyle get headingLoginPageStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      color: Color.fromRGBO(62, 62, 62, 1),
      fontSize: 54,
      fontWeight: FontWeight.bold,

    )
  );
}

TextStyle get subHeadingLoginPageStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      color: Color.fromRGBO(107, 107, 107, 1),
      fontSize: 16,
      fontWeight: FontWeight.bold,

    )
  );
}

TextStyle get titleTextFieldStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      color: Color.fromRGBO(150, 150, 150, 1),
      fontSize: 14,
      fontWeight: FontWeight.bold,
    )
  );
}

TextStyle get btnLoginStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 20,
      color: secondaryColor,
      fontWeight: FontWeight.bold,

    )
  );
}

TextStyle get subRegTextLoginStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      color: Color.fromRGBO(150, 150, 150, 1),
      fontSize: 15,
      fontWeight: FontWeight.bold,
    )
  );
}

TextStyle get regTextLoginStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      color: primaryColor,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    )
  );
}

TextStyle get headingRegPageStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      color: secondaryColor,
      fontSize: 36,
      fontWeight: FontWeight.bold,

    )
  );
}

TextStyle get headingResetPageStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      color: Color.fromRGBO(62, 62, 62, 1),
      fontSize: 32,
      fontWeight: FontWeight.bold,

    )
  );
}

TextStyle get subHeadingResetPageStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      color: Color.fromRGBO(107, 107, 107, 1),
      fontSize: 22,
      fontWeight: FontWeight.bold,

    )
  );
}