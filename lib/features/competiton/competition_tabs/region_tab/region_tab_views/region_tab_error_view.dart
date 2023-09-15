import 'package:flutter/material.dart';
import '../../../../../common/theme/custom_text_style.dart';

class RegionTabErrorView extends StatelessWidget {
  const RegionTabErrorView({
    required this.errorMessage,
    super.key,
  });

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}
