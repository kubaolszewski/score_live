import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
  });

  final Widget? leading;
  final Widget title;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      leading: leading,
      centerTitle: false,
      backgroundColor: const Color.fromARGB(255, 18, 17, 17),
      actions: actions != null && (actions?.isNotEmpty ?? false)
          ? [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: actions!,
                ),
              ),
            ]
          : null,
    );
  }
}
