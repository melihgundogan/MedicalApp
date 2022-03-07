import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainText extends StatelessWidget {
  const MainText({
    Key key,
    this.text,
    this.color = Colors.white,
    this.size = 36, this.fontWeight = FontWeight.bold, this.spacing = 3,
  }) : super(key: key);

  final String text;
  final Color color;
  final double size, spacing;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          wordSpacing: spacing),
    );
  }
}