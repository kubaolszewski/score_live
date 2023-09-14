import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../common/constants/app_colors.dart';
import '../../../../../../../../common/constants/text_styles.dart';

class TopPlayerListTile extends StatelessWidget {
  const TopPlayerListTile({
    super.key,
    required this.playerPhoto,
    required this.playerName,
    required this.playerTeam,
    required this.index,
  });

  final String playerPhoto;
  final String playerName;
  final String playerTeam;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                (index + 1).toString(),
                style: const CustomTextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w700),
              ),
              const SizedBox(width: 16),
              CircleAvatar(
                radius: 28,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: playerPhoto,
                    fit: BoxFit.fill,
                    progressIndicatorBuilder: (context, url, downloadProgress) =>
                        CircularProgressIndicator(value: downloadProgress.progress, color: AppColors.mainThemePink),
                    errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(playerName,
                      style: const CustomTextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 6),
                  Text(playerTeam,
                      style: const CustomTextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
          const Text('amount',
              style: CustomTextStyle(fontSize: 16, color: AppColors.mainThemePink, fontWeight: FontWeight.w900))
        ],
      ),
    );
  }
}
