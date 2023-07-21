import 'package:flutter/material.dart';

extension MediaQueryDimensions on BuildContext {
  double get mediaQueryWidth => MediaQuery.sizeOf(this).width;
  double get mediaQueryHeight => MediaQuery.sizeOf(this).height;
}
