import 'package:fitness_homepage_flutter/pages/theme/primary_theme.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class TopSearchBar extends StatelessWidget {
  const TopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 32,
            color: Colors.black12,
            spreadRadius: 0,
          )
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search Pancakes',
          prefixIcon: Padding(
            padding: EdgeInsets.all(12.0),
            child: HugeIcon(
              icon: HugeIcons.strokeRoundedSearch01,
              color: ProjectColors.secondaryTextColor,
            ),
          ),
          suffixIcon: SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 8,
                  endIndent: 8,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: HugeIcon(
                    icon: HugeIcons.strokeRoundedFilterHorizontal,
                    color: ProjectColors.secondaryTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
