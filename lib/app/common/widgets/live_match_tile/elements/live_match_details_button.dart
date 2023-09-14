import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../features/home/home_module.dart';
import '../../../extensions/context/applocalization_context.dart';
import '../../../../../models/match_model/match_model.dart';
import '../../../../../presentation/constants/app_colors.dart';
import '../../../../../presentation/constants/text_styles.dart';

class LiveMatchDetailsButton extends StatelessWidget {
  const LiveMatchDetailsButton({
    super.key,
    required this.liveMatch,
  });

  final MatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(380, 50),
        side: const BorderSide(
          width: 0.50,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: AppColors.mainThemePink,
      ),
      onPressed: () => Modular.to.pushNamed(HomePath.matchDetailsPath, arguments: liveMatch),
      child: Text(context.localizations.matchDetailsButton,
          style: const CustomTextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700)),
    );
  }
}
