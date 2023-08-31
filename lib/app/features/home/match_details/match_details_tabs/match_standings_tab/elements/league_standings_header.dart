import 'package:flutter/material.dart';
import 'package:score_live/app/common/extensions/context/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class LeagueStandingsHeader extends StatelessWidget {
  const LeagueStandingsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<String> headers = AppConstVariables.standingsHeadersText;

    return SizedBox(
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                const Text(
                  '#',
                  style: CustomTextStyle(fontSize: 16, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w900),
                ),
                const SizedBox(width: 18),
                Text(
                  context.localizations.clubText,
                  style: const CustomTextStyle(
                      fontSize: 16, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          SizedBox(
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              primary: false,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i <= 5; i++) ...[
                      HeaderText(
                        headerString: headers[i],
                      ),
                      const SizedBox(width: 11),
                    ],
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
    required this.headerString,
  });

  final String headerString;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerString,
      style: const CustomTextStyle(fontSize: 16, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w900),
    );
  }
}
