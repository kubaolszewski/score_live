import 'package:flutter/material.dart';

class AppBarWithActions extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithActions({
    super.key,
    required this.title,
    required this.actions,
  });

  final String title;
  final List<Widget> actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24,
        ),
      ),
      centerTitle: false,
      backgroundColor: const Color.fromARGB(255, 18, 17, 17),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            children: actions,
          ),
        ),
      ],
    );
  }
}

class AppBarWithNoActions extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithNoActions({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24,
        ),
      ),
      centerTitle: false,
      backgroundColor: const Color.fromARGB(255, 18, 17, 17),
    );
  }
}
