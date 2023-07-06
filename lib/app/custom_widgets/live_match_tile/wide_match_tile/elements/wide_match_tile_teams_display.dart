
import 'package:flutter/material.dart';

class WideMatchTileTeamsDisplay extends StatelessWidget {
  const WideMatchTileTeamsDisplay({
    super.key,
    required this.homeTeamLogo,
    required this.homeTeamName,
    required this.awayTeamLogo,
    required this.awayTeamName,
  });

  final String homeTeamLogo;
  final String homeTeamName;
  final String awayTeamLogo;
  final String awayTeamName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(
                  width: 35,
                  height: 35,
                  image: NetworkImage(homeTeamLogo),
                ),
                const SizedBox(width: 10),
                Text(
                  homeTeamName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image(
                  width: 35,
                  height: 35,
                  image: NetworkImage(awayTeamLogo),
                ),
                const SizedBox(width: 10),
                Text(
                  awayTeamName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

