import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class FlutterFlowTheme {
  static const Color primaryColor = Color(0xFF36A9E1);
  static const Color secondaryColor = Color(0xFFE71D73);
  static const Color tertiaryColor = Color(0xFFFFFFFF);

  static const Color unselected = Color(0xFF8E8E8E);
  static const Color orange = Color(0xFFF39200);
  static const Color green = Color(0xFF95C11F);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';
  static TextStyle get title1 => TextStyle(
        fontFamily: 'Proxima Nova',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w600,
        fontSize: 37,
      );
  static TextStyle get title2 => TextStyle(
        fontFamily: 'Proxima Nova',
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      );
  static TextStyle get title3 => TextStyle(
        fontFamily: 'Proxima Nova',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  static TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Proxima Nova',
        color: primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      );
  static TextStyle get subtitle2 => TextStyle(
        fontFamily: 'Proxima Nova',
        color: Colors.black,
        fontWeight: FontWeight.w100,
        fontSize: 15,
      );
  static TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Proxima Nova',
        color: Color(0xFF303030),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      );
  static TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Proxima Nova',
        color: unselected,
        fontWeight: FontWeight.normal,
        fontSize: 10,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
