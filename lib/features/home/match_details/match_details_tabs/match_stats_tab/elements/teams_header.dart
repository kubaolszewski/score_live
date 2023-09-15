import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TeamsHeader extends StatelessWidget {
  const TeamsHeader({
    super.key,
    required this.homeTeamLogo,
    required this.awayTeamLogo,
  });

  final String homeTeamLogo;
  final String awayTeamLogo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CachedNetworkImage(
            imageUrl: homeTeamLogo,
            width: 32,
            height: 32,
            errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white)),
        CachedNetworkImage(
            imageUrl: awayTeamLogo,
            width: 32,
            height: 32,
            errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white)),
      ],
    );
  }
}
