import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../data/models/match_model/match_model.dart';
import '../../../constants/app_colors.dart';
import '../../../extensions/match/match_properties_getter_ext.dart';

class WideMatchTileDate extends StatelessWidget {
  const WideMatchTileDate({
    super.key,
    required this.match,
  });

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    final String matchStatusShort = match.matchStatusShort;
    final String matchDate = DateFormat('dd/M').format(
      DateTime.parse(match.matchStartTime),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: Column(
        children: [
          Text(
            matchStatusShort,
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
