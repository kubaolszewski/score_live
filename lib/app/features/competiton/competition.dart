import 'package:flutter/material.dart';
import 'package:score_live/app/core/applocalization_context.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';

class CompetitionPage extends StatelessWidget {
  const CompetitionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 17, 17),
      appBar: CustomAppBar(
        title: Text(
          context.localizations.competitionAppBarTitle,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sample text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
