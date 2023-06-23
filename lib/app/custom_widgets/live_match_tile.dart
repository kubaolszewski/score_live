import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/home_module.dart';

class LiveMatchTile extends StatefulWidget {
  const LiveMatchTile({
    super.key,
  });

  @override
  State<LiveMatchTile> createState() => _LiveMatchTileState();
}

class _LiveMatchTileState extends State<LiveMatchTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
                  const SizedBox(
                    width: 150,
                  ),
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(380, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: const Color.fromARGB(255, 215, 54, 108),
                ),
                onPressed: () {
                  Modular.to.pushNamed(HomePath.matchDetailsPath);
                },
                child: const Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
