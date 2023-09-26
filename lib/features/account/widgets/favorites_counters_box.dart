import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/theme/custom_text_style.dart';
import 'favorites_counter_text.dart';

class FavoritesCountersBox extends StatelessWidget {
  const FavoritesCountersBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  context.localizations.accountFavoritesHeader,
                  style: const CustomTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 350,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.listTileGrey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FavoritesCounterText(text: context.localizations.accountCompetitionsCounterHeader),
                      FavoritesCounterText(text: context.localizations.accountCompetitionsCounterHeader),
                      FavoritesCounterText(text: context.localizations.accountPlayersCounterHeader),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
