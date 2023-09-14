// ignore_for_file: annotate_overrides, overridden_fields

import 'package:flutter/material.dart';

//TODO: Remove CommonTextStyles class later - unnecessary
abstract class CommonTextStyles {
  static const basicWhiteTextWithWeight = TextStyle(color: Colors.white, fontWeight: FontWeight.w700);
  static const basicWhiteTextWithFontSizeAndWeight =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24);
}

class CustomTextStyle extends TextStyle {
  const CustomTextStyle({this.fontSize, required this.color, required this.fontWeight});

  final double? fontSize;
  final Color color;
  final FontWeight fontWeight;
}
