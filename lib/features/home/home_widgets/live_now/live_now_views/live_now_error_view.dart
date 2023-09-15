import 'package:flutter/material.dart';
import '../../../../../common/theme/custom_text_style.dart';

class LiveNowErrorView extends StatelessWidget {
  const LiveNowErrorView({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}
