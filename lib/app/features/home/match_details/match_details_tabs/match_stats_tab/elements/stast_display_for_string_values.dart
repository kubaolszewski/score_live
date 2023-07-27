import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class StatsDisplayForStringValues extends StatelessWidget {
  const StatsDisplayForStringValues({
    super.key,
    required this.homeTotalValue,
    required this.awayTotalValue,
    required this.valueName,
  });

  final int homeTotalValue;
  final int awayTotalValue;
  final String valueName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$homeTotalValue%',
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(valueName,
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text('$awayTotalValue%',
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.mainThemePink),
                      height: 10,
                      width: homeTotalValue / AppConstVariables.ballPossessionSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.statsBarGrey),
                      height: 10,
                      width: awayTotalValue / AppConstVariables.ballPossessionSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
