import 'package:flutter/material.dart';

class Recommendation {
  String name;
  String level;
  String duration;
  String calories;
  String image;
  Color boxColor;

  Recommendation({
    required this.name,
    required this.level,
    required this.duration,
    required this.calories,
    required this.image,
    required this.boxColor,
  });

  static List<Recommendation> getRecommendations() {
    return [
      Recommendation(
        name: "Honey Pancakes",
        level: "Easy",
        duration: "30 mins",
        calories: "200kCal",
        image: "images/recommendation-1.png",
        boxColor: const Color(0xff92A3FD),
      ),
      Recommendation(
        name: "Steak",
        level: "Medium",
        duration: "45 mins",
        calories: "400kCal",
        image: "images/recommendation-2.png",
        boxColor: const Color(0xffFEB019),
      ),
      Recommendation(
        name: "Vegan Burger",
        level: "Easy",
        duration: "30 mins",
        calories: "250kCal",
        image: "images/recommendation-3.png",
        boxColor: const Color(0xffFF6B6B),
      ),
      Recommendation(
        name: "Hot Dog",
        level: "Easy",
        duration: "30 mins",
        calories: "250kCal",
        image: "images/recommendation-3.png",
        boxColor: const Color(0xff92A3FD),
      ),
      Recommendation(
        name: "Chocolate Chip Pancake",
        level: "Hard",
        duration: "1 hr",
        calories: "400kCal",
        image: "images/recommendation-3.png",
        boxColor: const Color(0xffFF6B6B),
      ),
      Recommendation(
        name: "Wrap",
        level: "Hard",
        duration: "1 hr",
        calories: "400kCal",
        image: "images/recommendation-3.png",
        boxColor: const Color(0xffFF6B6B),
      ),
    ];
  }
}
