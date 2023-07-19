import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SearchListTile extends StatelessWidget {
  const SearchListTile({
    super.key,
    required this.flag,
    required this.region,
    required this.name,
  });

  final String flag;
  final String region;
  final String name;

  @override
  Widget build(BuildContext context) {
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
                                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress, color: AppColors.mainThemePink),
                                  errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
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
                        region,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
