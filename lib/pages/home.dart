import 'package:fitness_homepage_flutter/pages/theme/primary_theme.dart';
import 'package:fitness_homepage_flutter/pages/widgets/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
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
                      VerticalDivider(
                        color: Colors.blueGrey, // Lighter color for subtlety
                        indent: 8,
                        endIndent: 8,
                        thickness: 1, // Increased thickness
                        width: 1, // Reduced width to make it thinner
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
          )
        ],
      ),
    );
  }
}
