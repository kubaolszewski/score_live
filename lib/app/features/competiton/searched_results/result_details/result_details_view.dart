import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/custom_widgets/search_list_tile.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/app/features/competiton/searched_results/result_details/widgets/result_details_header.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class ResultDetailsView extends StatelessWidget {
  const ResultDetailsView(
    this.params, {
    super.key,
  });

  final ResultParams params;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundBlack,
        appBar: CustomAppBar(
          title: Center(
            child: Text(
              context.localizations.navCompetition,
              style: const CustomTextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () => Modular.to.pop(),
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 24),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: Colors.white, size: 20)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.star_rate_rounded, color: Colors.white, size: 20)),
          ],
        ),
        body: BlocBuilder<CompetitionCubit, CompetitionState>(
          builder: (context, state) {
            return Column(
              children: [
                ResultDetailsHeader(params),
              ],
            );
          },
        ));
  }
}
