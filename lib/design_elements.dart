import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final screenWidth = (ui.window.physicalSize.width / ui.window.devicePixelRatio);
final screenHeight =
    (ui.window.physicalSize.height / ui.window.devicePixelRatio);
final safePaddingTop = WidgetsBinding.instance.window.padding.top;
final safePaddingBottom = WidgetsBinding.instance.window.padding.top;

ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  backgroundColor: ui.Color.fromARGB(255, 0, 94, 55),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
);

TextStyle mainheading =
    GoogleFonts.playfairDisplay(fontSize: 42, fontWeight: FontWeight.bold);

TextStyle logoHeading =
    GoogleFonts.playfairDisplay(fontSize: 25, fontWeight: FontWeight.w600);

TextStyle menuStyle =
    GoogleFonts.playfairDisplay(fontSize: 15, fontWeight: FontWeight.w600);

TextStyle bodyText = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
);

ButtonStyle menuButtonStyle =
    ElevatedButton.styleFrom(foregroundColor: Colors.black);

ButtonStyle menuHoverButtonStyle = ButtonStyle(
  overlayColor:
      MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered))
      return Color.fromARGB(255, 0, 94, 55); //<-- SEE HERE
    return Colors.transparent;
  }),
  foregroundColor:
      MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered))
      return Colors.white; //<-- SEE HERE
    return Colors.black;
  }),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
);
