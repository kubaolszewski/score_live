// ignore_for_file: annotate_overrides, overridden_fields

import 'package:flutter/material.dart';

class CustomTextStyle extends TextStyle {
  const CustomTextStyle({this.fontSize, required this.color, required this.fontWeight});

  final double? fontSize;
  final Color color;
  final FontWeight fontWeight;
}
