import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

import '../../../../../../models/match_model/match_model.dart';
import '../../../../../../presentation/constants/app_colors.dart';
import '../../../../../../presentation/constants/text_styles.dart';

class LeagueResultDetails extends StatelessWidget {
  const LeagueResultDetails({super.key, required this.leagueDetails});

  final List<MatchModel> leagueDetails;

  @override
  Widget build(BuildContext context) {
    final flag = leagueDetails[0].league?.flag ?? AppConstVariables.defaultLeagueLogo;
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 24),
          CircleAvatar(
              radius: 24,
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
                          progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(
                              value: downloadProgress.progress, color: AppColors.mainThemePink),
                          errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                        ))),
          const SizedBox(height: 12),
          Text(
            leagueDetails[0].league?.country ?? AppConstVariables.stringPlaceholder,
            style: const CustomTextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          Text(
            leagueDetails[0].league?.name ?? AppConstVariables.stringPlaceholder,
            style: const CustomTextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
