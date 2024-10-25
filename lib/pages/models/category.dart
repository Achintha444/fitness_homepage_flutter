import 'package:flutter/material.dart';

class Category {
  String name;
  String image;
  Color boxColor;

  Category({required this.name, required this.image, required this.boxColor});

  static List<Category> getCategories() {
    return [
      Category(name: "Salad", image: "images/category-1.png", boxColor: const Color(0xFFB8C3FF)),
      Category(name: "Wings", image: "images/category-2.png", boxColor: const Color(0xffF5A2C0)),
      Category(name: "Burritos", image: "images/category-3.png", boxColor: const Color(0xffFFD3A5)),
      Category(name: "Shakes", image: "images/category-4.png", boxColor: const Color(0xFF9BEBC6)),
      Category(name: "Meat", image: "images/category-5.png", boxColor: const Color(0xFFFFC2FF)),
    ];
  }
}