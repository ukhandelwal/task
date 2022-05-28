import 'package:flutter/material.dart';
import 'package:sunarc/utils/GetColor.dart';


class TextLarge extends StatelessWidget {
  final String name;
  final String? fontFamily;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;

  const TextLarge({
    Key? key,
    required this.name,
    this.color,
    this.fontWeight,
    this.fontFamily,
    this.fontSize,
    this.textAlign
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign:textAlign?? TextAlign.start,
      style: TextStyle(
          fontSize: fontSize ?? 24,
          color: color ?? GetColor.whiteColor,
          fontFamily: fontFamily,
          fontWeight: fontWeight ?? FontWeight.w600,
          decoration: TextDecoration.none),
    );
  }
}
