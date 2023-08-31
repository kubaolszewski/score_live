import 'package:flutter/material.dart';
import 'package:score_live/app/common/extensions/enums.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key, required this.statsSwitch});

  final StatsSwitch statsSwitch;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const StatsHeaderWithSwitch(),
        Builder(
          builder: (context) => switch (statsSwitch) {
            StatsSwitch.goals => const SizedBox(),
            StatsSwitch.assists => const SizedBox(),
          },
        )
      ],
    );
  }
}

class StatsHeaderWithSwitch extends StatelessWidget {
  const StatsHeaderWithSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SizedBox(
        height: 24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppConstVariables.goalsHeader,
              style: CustomTextStyle(fontSize: 20, color: Colors.grey[400]!, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 96,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    iconSize: 24,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    iconSize: 24,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
