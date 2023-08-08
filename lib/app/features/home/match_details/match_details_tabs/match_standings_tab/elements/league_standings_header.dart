import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class LeagueStandingsHeader extends StatelessWidget {
  const LeagueStandingsHeader({
    super.key,
  });
  final double headerHeight = 30.0;

  @override
  Widget build(BuildContext context) {
    const List<String> headers = AppConstVariables.standingsHeadersText;

    return SizedBox(
      height: headerHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            child: Row(
              children: [
                Text(
                  '#',
                  style: CustomTextStyle(fontSize: 16, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w900),
                ),
                SizedBox(width: 18),
                Text(
                  'Club',
                  style: CustomTextStyle(fontSize: 16, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w900),
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
                      const SizedBox(width: 12),
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
