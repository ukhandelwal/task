import 'package:flutter/material.dart';
import 'package:sunarc/utils/GetColor.dart';


class TextMedium extends StatelessWidget {
  final String name;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final String? fontfamily;
  final double? fontSize;

  const TextMedium(
      {Key? key,
      required this.name,
      this.color,
      this.fontWeight,
      this.maxLines,
      this.textAlign,
      this.fontfamily,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: fontSize ?? 14.0,
          color: color?? GetColor.whiteColor,
          fontFamily: fontfamily ,
          fontWeight: fontWeight ?? FontWeight.w600,
          decoration: TextDecoration.none),
    );
  }
}
