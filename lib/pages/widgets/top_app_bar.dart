import 'package:fitness_homepage_flutter/pages/theme/primary_theme.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Breakfast'),
      leading: _getActionIcon(HugeIcons.strokeRoundedArrowLeft01),
      actions: [
        _getActionIcon(HugeIcons.strokeRoundedMoreHorizontalCircle01),
      ],
    );
  }

  Widget _getActionIcon(IconData imageAsset) {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      width: 37,
      decoration: BoxDecoration(
        color: ProjectColors.appBarIconContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: HugeIcon(
        icon: imageAsset,
        color: ProjectColors.textColor,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
