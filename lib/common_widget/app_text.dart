import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const AppText(
      {Key? key,
      this.text,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: TextStyle(
          color: color ?? const Color(0xff636362),
          fontSize: fontSize ?? 12,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontFamily: 'Poppins',
        ));
  }
}
