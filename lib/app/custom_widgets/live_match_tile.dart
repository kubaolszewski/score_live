import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/app/features/home/home_module.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class LiveMatchTile extends StatelessWidget {
  const LiveMatchTile({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final assetName = liveMatch.league!.flag;
    const String defaultFlag =
        'https://thumbs.dreamstime.com/b/handshake-vector-icon-black-illustration-isolated-graphic-web-design-business-contract-agreement-flat-symbol-white-98077091.jpg';
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.listTileGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        child: ClipOval(
                          child: assetName == null
                              ? const Image(image: NetworkImage(defaultFlag))
                              : SvgPicture.network(
                                  assetName,
                                  fit: BoxFit.fill,
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
                        liveMatch.league!.name!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
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
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: liveMatch.fixture!.status!.short! == 'TBD' ||
                                  liveMatch.fixture!.status!.short! == 'NS' ||
                                  liveMatch.fixture!.status!.short! == 'SUSP'
                              ? Colors.red
                              : Colors.green,
                        ),
                        Text(
                          liveMatch.fixture!.status!.short!,
                          style: TextStyle(
                              color: liveMatch.fixture!.status!.short! == 'TBD' ||
                                      liveMatch.fixture!.status!.short! == 'NS' ||
                                      liveMatch.fixture!.status!.short! == 'SUSP'
                                  ? Colors.black
                                  : Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: SizedBox(
                width: 370,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox.square(
                        dimension: 110,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: NetworkImage(liveMatch.teams!.home!.logo!, scale: 3),
                            ),
                            Text(liveMatch.teams!.home!.name!,
                                textAlign: TextAlign.center, style: CommonTextStyles.basicWhiteText),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          liveMatch.fixture!.status!.short == 'NS' || liveMatch.fixture!.status!.short == 'TBD'
                              ? Text(
                                  liveMatch.fixture!.status!.long!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : Text(
                                  '${liveMatch.goals!.home} - '
                                  '${liveMatch.goals!.away}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox.square(
                        dimension: 110,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: NetworkImage(
                                liveMatch.teams!.away!.logo!,
                                scale: 3,
                              ),
                            ),
                            Text(liveMatch.teams!.away!.name!,
                                textAlign: TextAlign.center, style: CommonTextStyles.basicWhiteText),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
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
            )
          ],
        ),
      ),
    );
  }
}
