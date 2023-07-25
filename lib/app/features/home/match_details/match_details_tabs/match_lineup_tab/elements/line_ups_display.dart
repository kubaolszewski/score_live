
import 'package:flutter/material.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';

class LineUpsDisplay extends StatelessWidget {
  const LineUpsDisplay({super.key, required this.lineUp});

  final List<LineUpModel> lineUp;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                height: 500,
                color: Colors.red,
              )
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                height: 500,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ],
    );
  }
}