import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class MatchDetailsTitle extends StatelessWidget {
  const MatchDetailsTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
            )
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.localizations.currentDay,
              style: const CustomTextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    );
  }
}
