import 'package:fitness_homepage_flutter/pages/theme/primary_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Breakfast'),
      leading: _getActionIcon('images/arrow_left.svg'),
      actions: [
        _getActionIcon('images/more.svg')
      ],
    );
  }

  Widget _getActionIcon(String imageAsset) {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      width: 37,
      decoration: BoxDecoration(
        color: ProjectColors.appBarIconContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(imageAsset),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
