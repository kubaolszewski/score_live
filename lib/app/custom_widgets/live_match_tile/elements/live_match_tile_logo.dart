import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class LiveMatchTileLogo extends StatelessWidget {
  const LiveMatchTileLogo({super.key, required this.liveMatch});

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    const String stringPlaceholder = '';
    final String assetName = liveMatch.league?.flag ??
        'https://thumbs.dreamstime.com/b/handshake-vector-icon-black-illustration-isolated-graphic-web-design-business-contract-agreement-flat-symbol-white-98077091.jpg';
    final String leagueName = liveMatch.league?.name ?? context.localizations.unknownLeague;
    final String matchStatusShort = liveMatch.fixture?.status?.short ?? stringPlaceholder;
    return Expanded(
      flex: 1,
      child: Row(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                child: ClipOval(
                  child: SvgPicture.network(
                    assetName,
                    fit: BoxFit.cover,
                    placeholderBuilder: (BuildContext context) => Container(
                      padding: const EdgeInsets.all(30.0),
                      child: const Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                leagueName,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 150,
          ),
          Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: AppColors.liveTimerBackground,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.green,
                ),
                Text(
                  matchStatusShort,
                  style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
