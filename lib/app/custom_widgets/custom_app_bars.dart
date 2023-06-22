import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'scorelive',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
      ),
      centerTitle: false,
      backgroundColor: const Color.fromARGB(255, 18, 17, 17),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: 32,
                  )),
              const SizedBox(width: 10),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 32,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
