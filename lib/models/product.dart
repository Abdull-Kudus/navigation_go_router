import 'package:flutter/material.dart';

class Product {
  final String name;
  final String tileText;
  final String description;
  final int price;
  final int rating;
  final Color color;

  const Product({
    required this.name,
    required this.tileText,
    required this.description,
    required this.price,
    required this.rating,
    required this.color,
  });
}