import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class WideMatchTileDate extends StatelessWidget {
  const WideMatchTileDate({
    super.key,
    required this.match,
  });

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    final String matchStatus = match.fixture?.status?.short ?? AppConstVariables.stringPlaceholder;
    final String longStringDate = match.fixture?.date ?? AppConstVariables.stringPlaceholder;
    final DateTime formattedDate = DateTime.parse(longStringDate);
    final String matchDate = DateFormat('dd/M').format(formattedDate);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: Column(
        children: [
          Text(
            matchStatus,
            style: const TextStyle(color: AppColors.inactiveTextGrey, fontWeight: FontWeight.bold),
          ),
          Text(
            matchDate,
            style: const TextStyle(color: AppColors.inactiveTextGrey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
