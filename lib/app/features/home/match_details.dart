import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/custom_app_bars.dart';

class MatchDetails extends StatelessWidget {
  const MatchDetails({super.key});

  final _detailsTitle = const DetailsTitle();

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
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star_rate_rounded,
              color: Colors.white,
            ),
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
                padding: const EdgeInsets.all(8.0),
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
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 210),
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
                        Placeholder(
                          fallbackHeight: 50,
                          fallbackWidth: 50,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      indent: 50.0,
                      endIndent: 50.0,
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
