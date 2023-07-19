import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class LiveNowErrorView extends StatelessWidget {
  const LiveNowErrorView({super.key, required this.errorMessage});

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
