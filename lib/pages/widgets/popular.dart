import 'package:fitness_homepage_flutter/pages/models/recommendation.dart';
import 'package:fitness_homepage_flutter/pages/theme/primary_theme.dart';
import 'package:fitness_homepage_flutter/pages/widgets/common/main_title.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 24),
            scrollDirection: Axis.vertical,
            itemCount: _getRecommendations().length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                height: 72,
                padding: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white70,
                  border: Border.all(
                    color: ProjectColors.secondaryTextColor.withAlpha(16),
                    width: 0.4,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 32,
                      offset: Offset(0, 10),
                      color: Color(0x05000000),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _getRecommendations()[index].name,
                          style: const TextStyle(
                            fontSize: 14,
                            color: ProjectColors.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "${_getRecommendations()[index].calories} | ${_getRecommendations()[index].duration} | ${_getRecommendations()[index].level}",
                          style: const TextStyle(
                              fontSize: 12,
                              color: ProjectColors.secondaryTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const HugeIcon(
                      icon: HugeIcons.strokeRoundedArrowRight01,
                      color: ProjectColors.secondaryTextColor,
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
