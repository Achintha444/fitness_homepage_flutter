import 'package:fitness_homepage_flutter/pages/layout/main_layout.dart';
import 'package:fitness_homepage_flutter/pages/widgets/categories.dart';
import 'package:fitness_homepage_flutter/pages/widgets/popular.dart';
import 'package:fitness_homepage_flutter/pages/widgets/recommendations.dart';
import 'package:fitness_homepage_flutter/pages/widgets/top_app_bar.dart';
import 'package:fitness_homepage_flutter/pages/widgets/top_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(),
      body: MainLayout(
        child: Column(
          children: [
            const TopSearchBar(),
            const SizedBox(height: 28),
            Expanded(
              child: Stack(
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: const [
                      Categories(),
                      SizedBox(height: 28),
                      Recommendations(),
                      SizedBox(height: 28),
                      Popular(),
                      SizedBox(height: 28),
                    ],
                  ),
                  Container(
                    height: 8,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme.of(context).scaffoldBackgroundColor,
                          Theme.of(context)
                              .scaffoldBackgroundColor
                              .withOpacity(0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
