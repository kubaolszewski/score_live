import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';

class ScoreDetails extends StatelessWidget {
  const ScoreDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final liveMatches = state.liveMatchResponse;
        if (liveMatches!.isEmpty) {
          return const SizedBox(
            height: 200,
            child: Center(
              child: Text('Nothing here :(', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          );
        }
        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'League name',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: width,
              height: height,
              child: ListView.builder(
                itemCount: liveMatches.length,
                itemBuilder: (context, index) {
                  final liveMatch = liveMatches[index];
                  return WideMatchListTile(
                    liveMatch: liveMatch,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
