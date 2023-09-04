import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';

import '../../../../../../../presentation/constants/app_colors.dart';
import '../../../../../../../presentation/constants/text_styles.dart';
import '../../../../../common/widgets/search_list_tile.dart';

class ResultDetailsHeader extends StatelessWidget {
  const ResultDetailsHeader(this.params, {super.key});

  final ResultParams params;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompetitionCubit, CompetitionState>(
      builder: (context, state) {
        return Center(
          child: Column(
            children: [
              const SizedBox(height: 24),
              CircleAvatar(
                radius: 24,
                child: ClipOval(
                  child: params.flag.contains('.svg')
                      ? SvgPicture.network(
                          params.flag,
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
                          imageUrl: params.flag,
                          fit: BoxFit.fill,
                          progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(
                              value: downloadProgress.progress, color: AppColors.mainThemePink),
                          errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                        ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                params.region,
                style: const CustomTextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 2),
              Text(
                params.name,
                style: const CustomTextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        );
      },
    );
  }
}
