import 'package:fitness_homepage_flutter/pages/layout/main_layout.dart';
import 'package:fitness_homepage_flutter/pages/widgets/categories.dart';
import 'package:fitness_homepage_flutter/pages/widgets/recommendations.dart';
import 'package:fitness_homepage_flutter/pages/widgets/top_app_bar.dart';
import 'package:fitness_homepage_flutter/pages/widgets/top_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopAppBar(),
      body: MainLayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopSearchBar(),
            SizedBox(height: 36),
            Categories(),
            SizedBox(height: 28),
            Recommendations()
          ],
        ),
      ),
    );
  }
}
