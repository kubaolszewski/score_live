import 'package:flutter/material.dart';
import '../../../../../../common/constants/app_colors.dart';
import '../../../../../../common/constants/app_const_variables.dart';
import '../../../../../../common/constants/text_styles.dart';

class SingleStatDisplay extends StatelessWidget {
  const SingleStatDisplay({
    super.key,
    required this.homeTotalValue,
    required this.awayTotalValue,
    required this.valueName,
    this.totalValueSum,
  });

  final int homeTotalValue;
  final int awayTotalValue;
  final String valueName;
  final int? totalValueSum;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$homeTotalValue',
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(valueName,
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text('$awayTotalValue',
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
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.mainThemePink),
                      height: 10,
                      width: totalValueSum != null
                          ? homeTotalValue / totalValueSum! * AppConstVariables.statsBarWidth
                          : homeTotalValue / AppConstVariables.ballPossessionSum * AppConstVariables.statsBarWidth,
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
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.statsBarGrey),
                      height: 10,
                      width: totalValueSum != null
                          ? awayTotalValue / totalValueSum! * AppConstVariables.statsBarWidth
                          : awayTotalValue / AppConstVariables.ballPossessionSum * AppConstVariables.statsBarWidth,
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
