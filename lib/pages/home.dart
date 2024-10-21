import 'package:fitness_homepage_flutter/pages/widgets/top_app_bar.dart';
import 'package:fitness_homepage_flutter/pages/widgets/top_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopAppBar(),
      body: Column(
        children: [TopSearchBar()],
      ),
    );
  }
}
