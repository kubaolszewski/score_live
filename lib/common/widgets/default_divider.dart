import 'package:flutter/material.dart';

class DefaultDivider extends StatelessWidget {
  const DefaultDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.grey,
      thickness: 0.5,
    );
  }
}
