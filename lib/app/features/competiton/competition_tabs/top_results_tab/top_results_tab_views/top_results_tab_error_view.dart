import 'package:flutter/material.dart';
import '../../../../../../presentation/constants/text_styles.dart';

class TopResultsTabErrorView extends StatelessWidget {
  const TopResultsTabErrorView({
    required this.errorMessage,
    super.key,
  });

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: CommonTextStyles.basicWhiteTextWithWeight,
      ),
    );
  }
}