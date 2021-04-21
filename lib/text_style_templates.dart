import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './configs.dart';

class TextStyleTemplates {
  TextStyle smallTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.smallFontSize,
      fontWeight: FontWeight.normal,
      color: color,
    );
  }

  TextStyle smallBoldTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.smallFontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  TextStyle defaultTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.defaultFontSize,
      fontWeight: FontWeight.normal,
      color: color,
    );
  }

  TextStyle defaultBoldTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.defaultFontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  TextStyle mediumTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.mediumFontSize,
      fontWeight: FontWeight.normal,
      color: color,
    );
  }

  TextStyle mediumBoldTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.mediumFontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  TextStyle largeTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.largeFontSize,
      fontWeight: FontWeight.normal,
      color: color,
    );
  }

  TextStyle largeBoldTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.largeFontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  TextStyle xlargeTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.xLargeFontSize,
      fontWeight: FontWeight.normal,
      color: color,
    );
  }

  TextStyle xlargeBoldTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.xLargeFontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  TextStyle xxlargeTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.xxLargeFontSize,
      fontWeight: FontWeight.normal,
      color: color,
    );
  }

  TextStyle xxlargeBoldTextStyle(Color color) {
    return GoogleFonts.lato(
      fontSize: Configs.xxLargeFontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }
}
