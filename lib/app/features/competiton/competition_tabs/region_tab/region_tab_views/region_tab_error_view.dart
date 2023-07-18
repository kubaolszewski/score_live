import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

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
        style: CommonTextStyles.basicWhiteText,
      ),
    );
  }
}
