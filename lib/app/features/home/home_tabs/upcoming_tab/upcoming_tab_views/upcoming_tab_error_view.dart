import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class UpcomingTabErrorView extends StatelessWidget {
  const UpcomingTabErrorView({
    required this.errorMessage,
    super.key,
  });

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: CommonTextStyles.basicWhiteTextWithWeight
      ),
    );
  }
}