import 'package:flutter/material.dart';
import '../../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../common/theme/custom_text_style.dart';

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
        errorMessage.isNotEmpty ? errorMessage : context.localizations.noResults,
        style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}
