import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../common/widgets/custom_app_bar.dart';
import '../../cubit/competition_cubit.dart';
import 'searched_leagues_view.dart';
import '../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../presentation/constants/app_colors.dart';
import '../../../../../presentation/constants/text_styles.dart';

class SearchedLeaguesScreen extends StatelessWidget {
  const SearchedLeaguesScreen(this.nameQuery, {super.key});

  final String nameQuery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
        leading: IconButton(
            onPressed: () => Modular.to.pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        title: Text(
          context.localizations.searchHeader,
          style: CommonTextStyles.basicWhiteTextWithWeight,
        ),
      ),
      body: BlocProvider<CompetitionCubit>(
        create: (context) => Modular.get<CompetitionCubit>()..searchingLeagues(nameQuery),
        child: const SearchedLeaguesView(),
      ),
    );
  }
}
