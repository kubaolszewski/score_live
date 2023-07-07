import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class SearchedCompetitionScreen extends StatelessWidget {
  SearchedCompetitionScreen({super.key});

  final competitionCubit = Modular.get<CompetitionCubit>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
        leading: IconButton(
            onPressed: () {
              Modular.to.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        title: const Text(
          'Competition',
          style: CommonTextStyles.basicWhiteText,
        ),
      ),
      body: BlocProvider<CompetitionCubit>(
        create: (context) => competitionCubit,
        child: BlocBuilder<CompetitionCubit, CompetitionState>(
          builder: (context, state) {
            if (state.isLoading == true) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.mainThemePink,
                ),
              );
            }

            final leagues = state.leagues;

            if (leagues.isEmpty) {
              return SizedBox(
                height: 200,
                child: Center(
                  child: Text(
                    context.localizations.dataErrorInfo,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              );
            }

            return Center(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    context.localizations.topHeader,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: width,
                      height: height,
                      child: ListView.builder(
                        itemCount: leagues.length,
                        itemBuilder: (context, index) {
                          final league = leagues[index];
                          final String leagueFlag = league.country?.flag ?? '';
                          final String leagueRegion = league.country?.name ?? '';
                          final String leagueName = league.league?.name ?? '';
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.listTileGrey,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 15,
                                              child: ClipOval(
                                                child: SvgPicture.network(
                                                  leagueFlag,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              leagueRegion,
                                              style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              leagueName,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
