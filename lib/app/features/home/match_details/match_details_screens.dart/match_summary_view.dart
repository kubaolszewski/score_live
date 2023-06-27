import 'package:flutter/material.dart';

class MatchSummaryView extends StatelessWidget {
  const MatchSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color.fromARGB(255, 44, 42, 42)),
            height: 200,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Half Time',
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Team #1 Home - Away Team #2',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color.fromARGB(255, 44, 42, 42)),
            height: 200,
          ),
        ],
      ),
    );
  }
}
