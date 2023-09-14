import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../common/extensions/context/applocalization_context.dart';
import '../../../../common/extensions/date/date_formatter_ext.dart';
import '../../../../../presentation/constants/app_const_variables.dart';
import '../../../../../presentation/constants/text_styles.dart';

class MatchDetailsTitle extends StatelessWidget {
  const MatchDetailsTitle(this.title, this.matchDate, {super.key});

  final String title;
  final String matchDate;

  @override
  Widget build(BuildContext context) {
    final actualDateFormattedToString = DateFormat(AppConstVariables.dateYyyyMmDdDashFormat).format(DateTime.now());
    final dateFromModelCheckerToString = matchDate.formatDateToYyyyMmDdString(AppConstVariables.dateYyyyMmDdDashFormat);
    final dateFromModelFormattedToString =
        matchDate.formatDateToYyyyMmDdString(AppConstVariables.dateMmmDYyyyWithComaFormat);
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
