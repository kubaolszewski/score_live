import 'package:flutter/material.dart';
import 'package:score_live/app/core/enums.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';

class MatchDetails extends StatefulWidget {
  const MatchDetails({super.key});

  @override
  State<MatchDetails> createState() => _MatchDetailsState();
}


class _MatchDetailsState extends State<MatchDetails> {
  final _detailsTitle = const DetailsTitle();
  DetailsOptions options = DetailsOptions.summary;
  Set<DetailsOptions> allDetailsOptions = <DetailsOptions>{DetailsOptions.summary};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 17, 17),
      appBar: CustomAppBar(
        title: _detailsTitle,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: Colors.white)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star_rate_rounded, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 44, 42, 42),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'League name',
                              style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(width: 190),
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color.fromARGB(255, 215, 235, 216),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),
                              Text(
                                '78',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Placeholder(
                          fallbackHeight: 50,
                          fallbackWidth: 50,
                        ),
                        SizedBox(width: 30),
                        Text(
                          'Result',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 30),
                        Placeholder(fallbackHeight: 50, fallbackWidth: 50),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Divider(color: Colors.grey, thickness: 0.5, indent: 5.0, endIndent: 5.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Antony 32'",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              "Diogo Dalot 76'",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.sports_soccer,
                              color: Color.fromARGB(255, 104, 102, 102),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Antony 32'",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              "Diogo Dalot 76'",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SegmentedButton(
                      showSelectedIcon: false,
                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(width: 0.0),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                      ),
                      segments: const <ButtonSegment<DetailsOptions>>[
                        ButtonSegment(
                          value: DetailsOptions.summary,
                          label: Text(
                            'Summary',
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ButtonSegment(
                          value: DetailsOptions.lineUp,
                          label: Text(
                            'Line Up',
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ButtonSegment(
                          value: DetailsOptions.stats,
                          label: Text(
                            'Stats',
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ButtonSegment(
                          value: DetailsOptions.h2H,
                          label: Text(
                            'H2H',
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ButtonSegment(
                          value: DetailsOptions.standings,
                          label: Text(
                            'Standings',
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                      selected: allDetailsOptions,
                      onSelectionChanged: (Set<DetailsOptions> selectedOption) {
                        setState(() {
                          allDetailsOptions = selectedOption;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsTitle extends StatelessWidget {
  const DetailsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Premier League',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Today',
              style: TextStyle(color: Colors.grey),
            )
          ],
        )
      ],
    ));
  }
}
