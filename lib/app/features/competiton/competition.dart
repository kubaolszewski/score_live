import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/custom_app_bars.dart';

class CompetitionPage extends StatelessWidget {
  const CompetitionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 17, 17),
      appBar: CustomAppBar(
        title: Text(
          'Browse Competition',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
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
