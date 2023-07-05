import 'package:flutter/material.dart';

class HomeEventTextSample extends StatelessWidget {
  const HomeEventTextSample({super.key, required this.time, required this.player});

  final String time;
  final String player;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(time, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        const SizedBox(width: 5),
        Text(player, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class AwayEventTextSample extends StatelessWidget {
  const AwayEventTextSample({super.key, required this.time, required this.player});

  final String time;
  final String player;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(player, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        const SizedBox(width: 5),
        Text(time, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
