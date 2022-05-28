import 'package:flutter/material.dart';
import 'package:sunarc/utils/GetColor.dart';

class TextSmall extends StatelessWidget {
  final String name;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final String? fontfamily;
  final double? fontSize;
  final int? maxLine;

  const TextSmall(
      {Key? key,
      this.textAlign,
      this.fontfamily,
      this.fontWeight,
      required this.name,
      this.color,
      this.fontSize,
      this.maxLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: maxLine ?? 13,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: fontSize ?? 10.0,
          fontFamily: fontfamily,
          color: color ?? GetColor.whiteColor,
          fontWeight: fontWeight ?? FontWeight.w600,
          decoration: TextDecoration.none),
    );
  }
}
