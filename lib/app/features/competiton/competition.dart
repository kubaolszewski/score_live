import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class CompetitionScreen extends StatelessWidget {
  const CompetitionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
        title: Text(
          'Browse Competition',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Competition Page',
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
