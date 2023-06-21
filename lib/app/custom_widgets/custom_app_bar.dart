
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'ScoreLive',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      automaticallyImplyLeading: true,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 18, 17, 17),
    );
  }
}