import 'package:fitness_homepage_flutter/pages/models/recommendation.dart';
import 'package:fitness_homepage_flutter/pages/theme/primary_theme.dart';
import 'package:fitness_homepage_flutter/pages/widgets/common/main_title.dart';
import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  List<Recommendation> _getRecommendations() {
    return Recommendation.getRecommendations();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: "Popular"),
        const SizedBox(height: 16),
        SizedBox(
          height: 192,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            scrollDirection: Axis.horizontal,
            itemCount: _getRecommendations().length,
            itemBuilder: (context, index) {
              return Container(
                width: 192,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: _getRecommendations()[index].boxColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          _getRecommendations()[index].image,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          _getRecommendations()[index].name,
                          style: const TextStyle(
                            fontSize: 18,
                            color: ProjectColors.textColor,
                            fontWeight: FontWeight.w500
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "${_getRecommendations()[index].calories} | ${_getRecommendations()[index].duration} | ${_getRecommendations()[index].level}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: ProjectColors.secondaryTextColor
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
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
