import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/home_module.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class LiveMatchDetailsButton extends StatelessWidget {
  const LiveMatchDetailsButton({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(380, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: AppColors.mainThemePink,
        ),
        onPressed: () {
          Modular.to.pushNamed(HomePath.matchDetailsPath, arguments: liveMatch);
        },
        child: Text(
          context.localizations.matchDetailsButton,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
