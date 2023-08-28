import 'package:flutter/material.dart';

import '../../../../../../models/match_model/match_model.dart';
import '../../../../../../presentation/constants/text_styles.dart';

class TeamResultDetails extends StatelessWidget {
  const TeamResultDetails({super.key, required this.teamDetails});

  final List<MatchModel> teamDetails;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 24),
          CircleAvatar(
            radius: 24,
            child: ClipOval(),
          ),
          SizedBox(height: 12),
          Text(
            'Region',
            style: CustomTextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          Text(
            'Name',
            style: CustomTextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
