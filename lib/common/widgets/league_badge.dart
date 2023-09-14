import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/app_colors.dart';
import '../constants/text_styles.dart';

class LeagueBadge extends StatelessWidget {
  const LeagueBadge({
    super.key,
    required this.flag,
    required this.leagueName,
  });

  final String flag;
  final String leagueName;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          style: const CustomTextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
