import 'package:flutter/material.dart';
import '../../../extensions/context/applocalization_context.dart';
import '../../../theme/custom_text_style.dart';

class FinishedMatchInfo extends StatelessWidget {
  const FinishedMatchInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      context.localizations.fullTime,
      style: const CustomTextStyle(
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
