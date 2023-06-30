import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        if (state.isLoading == true) {
          return const Center(child: CircularProgressIndicator());
        }
        final liveMatches = state.liveMatchResponse;
        if (liveMatches!.isEmpty) {
          return const SizedBox(
            height: 200,
            child: Center(
              child: Text('Nothing here :(', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          );
        }
        final String assetName = liveMatches[0].league!.flag!;
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    child: ClipOval(
                      child: SvgPicture.network(
                        assetName,
                        fit: BoxFit.cover,
                        placeholderBuilder: (BuildContext context) => Container(
                          padding: const EdgeInsets.all(30.0),
                          child: const Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    liveMatches[0].league!.name!,
                    style: const TextStyle(
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
                shrinkWrap: true,
                physics: const ScrollPhysics(),
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
