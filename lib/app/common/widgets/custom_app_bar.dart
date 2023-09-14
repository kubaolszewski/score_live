import 'package:flutter/material.dart';
import '../../../presentation/constants/app_colors.dart';

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
      automaticallyImplyLeading: false,
      title: title,
      centerTitle: false,
      leading: leading,
      backgroundColor: AppColors.backgroundBlack,
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
