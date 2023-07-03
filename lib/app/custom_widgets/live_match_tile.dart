import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/app/features/home/home_module.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class LiveMatchTile extends StatelessWidget {
  const LiveMatchTile({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final String assetName = liveMatch.league!.flag!;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.listTileGrey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
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
                          liveMatch.league!.name!,
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
                            liveMatch.fixture!.status!.short!,
                            style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
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
                          dimension: 100.00,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: NetworkImage(liveMatch.teams!.home!.logo!, scale: 3),
                              ),
                              Text(liveMatch.teams!.home!.name!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${liveMatch.goals!.home} -'
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
                          dimension: 100,
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
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}
