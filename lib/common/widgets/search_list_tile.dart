import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../features/competiton/searched_results/result_details/result_details_screen.dart';
import '../constants/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../extensions/navigation/navigation_on_string_ext.dart';

class SearchListTile extends StatelessWidget {
  const SearchListTile({
    super.key,
    this.resultId,
    required this.flag,
    required this.region,
    required this.name,
  });

  final int? resultId;
  final String flag;
  final String region;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => Modular.to.pushNamed(ResultDetailsScreen.path.relativePath,
          arguments: ResultParams(resultId: resultId, flag: flag, region: region, name: name)),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey)),
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 24.0, right: 16.0, left: 8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 15,
                    child: ClipOval(
                      child: flag.contains('.svg')
                          ? SvgPicture.network(
                              flag,
                              fit: BoxFit.fill,
                              placeholderBuilder: (context) =>
                                  const CircularProgressIndicator(color: AppColors.mainThemePink),
                            )
                          : CachedNetworkImage(
                              imageUrl: flag,
                              fit: BoxFit.fill,
                              progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(
                                  value: downloadProgress.progress, color: AppColors.mainThemePink),
                              errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                            ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Align(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    region,
                    style: const TextStyle(
                      color: AppColors.inactiveTextGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultParams {
  final int? resultId;
  final String flag;
  final String region;
  final String name;

  ResultParams({
    required this.resultId,
    required this.flag,
    required this.region,
    required this.name,
  });
}
