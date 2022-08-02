import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Helper {
  static TextStyle textStylePrimary(
      double size, FontWeight weight, Color color) {
    return GoogleFonts.poppins(
      fontSize: size,
      fontWeight: weight,
      color: color,
    );
  }
}
