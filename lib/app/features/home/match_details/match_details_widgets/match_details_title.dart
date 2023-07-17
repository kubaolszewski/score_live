import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';

class MatchDetailsTitle extends StatelessWidget {
  const MatchDetailsTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.localizations.currentDay,
                style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
