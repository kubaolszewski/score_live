import 'package:flutter/material.dart';

class CompetitionPage extends StatelessWidget {
  const CompetitionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
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
    );
  }
}
