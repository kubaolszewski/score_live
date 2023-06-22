import 'package:flutter/material.dart';

class LiveMatchTile extends StatelessWidget {
  const LiveMatchTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 44, 42, 42),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color.fromARGB(255, 215, 235, 216),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(380, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: const Color.fromARGB(255, 215, 54, 108),
                ),
                onPressed: () {},
                child: const Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}