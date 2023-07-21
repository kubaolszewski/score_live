import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class MatchDetailsTitle extends StatelessWidget {
  const MatchDetailsTitle(this.title, this.matchDate, {super.key});

  final String title;
  final String matchDate;

  @override
  Widget build(BuildContext context) {
    final actualDateFormattedToString = DateFormat('yyyy-MM-dd').format(DateTime.now());
    final dateFromModelCheckerToString = DateFormat('yyyy-MM-dd').format(
      DateFormat('yyyy-MM-dd').parse(matchDate),
    );
    final dateFromModelFormattedToString = DateFormat('MMM d, yyyy').format(
      DateFormat('yyyy-MM-dd').parse(matchDate),
    );
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
            actualDateFormattedToString != dateFromModelCheckerToString
                ? Text(
                    dateFromModelFormattedToString,
                    locale: context.myLocale,
                    style: const CustomTextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
                  )
                : Text(
                    context.localizations.currentDay,
                    style: const CustomTextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
                  )
          ],
        )
      ],
    );
  }
}
