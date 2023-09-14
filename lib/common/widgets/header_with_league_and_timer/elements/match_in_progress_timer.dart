import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_const_variables.dart';
import '../../../theme/custom_text_style.dart';

class MatchInProgressTimer extends StatelessWidget {
  const MatchInProgressTimer({
    super.key,
    required this.matchStatusShort,
    required this.matchTimeElapsed,
  });

  final String matchStatusShort;
  final int matchTimeElapsed;

  @override
  Widget build(BuildContext context) {
    final bool matchStatusCheck = matchStatusShort == AppConstVariables.matchTimeToBeDefined ||
        matchStatusShort == AppConstVariables.matchNotStarted ||
        matchStatusShort == AppConstVariables.matchSuspended;
    return Container(
      height: 30,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: matchStatusCheck ? Colors.transparent : AppColors.liveTimerBackgroundGreen),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 5,
            backgroundColor: matchStatusCheck ? Colors.red : Colors.green,
          ),
          Text(
            matchStatusCheck ? '--:--' : matchTimeElapsed.toString(),
            style: CustomTextStyle(
                fontSize: 14, color: matchStatusCheck ? Colors.white : Colors.green, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
