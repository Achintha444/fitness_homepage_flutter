import 'package:fitness_homepage_flutter/pages/theme/primary_theme.dart';
import 'package:fitness_homepage_flutter/pages/widgets/common/main_title.dart';
import 'package:flutter/material.dart';

import '../models/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  List<Category> _getCategories() {
    return Category.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: "Category"),
        const SizedBox(height: 16),
        SizedBox(
          height: 136,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            scrollDirection: Axis.horizontal,
            itemCount: _getCategories().length,
            itemBuilder: (context, index) {
              return Container(
                width: 96,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: _getCategories()[index].boxColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: const BoxDecoration(
                        color: ProjectColors.appBarIconContainer,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          _getCategories()[index].image,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Text(
                      _getCategories()[index].name,
                      style: const TextStyle(
                        fontSize: 14,
                        color: ProjectColors.secondaryTextColor,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
