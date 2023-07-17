import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class ScoreTabErrorView extends StatelessWidget {
  const ScoreTabErrorView({
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
