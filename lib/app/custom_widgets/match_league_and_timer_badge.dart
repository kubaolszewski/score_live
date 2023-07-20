import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class MatchLeagueAndTimerBadge extends StatelessWidget {
  const MatchLeagueAndTimerBadge({super.key, required this.liveMatch});

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    const String stringPlaceholder = '';
    final String flag = liveMatch.league?.flag ??
        'https://thumbs.dreamstime.com/b/handshake-vector-icon-black-illustration-isolated-graphic-web-design-business-contract-agreement-flat-symbol-white-98077091.jpg';
    final String leagueName = liveMatch.league?.name ?? context.localizations.unknownLeague;
    final String matchStatusShort = liveMatch.fixture?.status?.short ?? stringPlaceholder;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 15,
              child: ClipOval(
                child: flag.contains('.svg')
                    ? SvgPicture.network(
                        flag,
                        fit: BoxFit.cover,
                        placeholderBuilder: (BuildContext context) => Container(
                          padding: const EdgeInsets.all(30.0),
                          child: const Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ),
                      )
                    : CachedNetworkImage(
                        imageUrl: flag,
                        fit: BoxFit.fill,
                        progressIndicatorBuilder: (context, url, downloadProgress) =>
                            CircularProgressIndicator(value: downloadProgress.progress, color: AppColors.mainThemePink),
                        errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                      ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              leagueName,
              style: const TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
        matchStatusShort != 'FT'
            ? Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColors.liveTimerBackgroundGreen,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          matchStatusShort == 'TBD' || matchStatusShort == 'NS' || matchStatusShort == 'SUSP'
                              ? Colors.red
                              : Colors.green,
                    ),
                    Text(
                      matchStatusShort,
                      style: TextStyle(
                          color: matchStatusShort == 'TBD' || matchStatusShort == 'NS' || matchStatusShort == 'SUSP'
                              ? Colors.black
                              : Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            : Text(
                context.localizations.fullTime,
                style: const CustomTextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
      ],
    );
  }
}
