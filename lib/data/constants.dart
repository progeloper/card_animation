import 'package:flutter/material.dart';
import 'package:card_animation/widgets/category_card.dart';

import '../widgets/food_card.dart';

class Constants{
  static List<Widget> categories = [
    const CategoryCard(color: Colors.blue, category: 'Appliances', subtitle: 'Electronics and more'),
    const CategoryCard(color: Colors.green, category: 'Groceries', subtitle: 'Garri and more'),
    const CategoryCard(color: Colors.blueGrey, category: 'Dairy', subtitle: 'Milk, butter and more'),
    const CategoryCard(color: Colors.purple, category: 'Cosmetics', subtitle: 'Body care, makeup and more'),
  ];

  static List<Widget> foods = [
    const FoodCard(
        name: 'Cheeseburger',
        restaurant: 'Don Jazzy',
        price: '12,000',
        asset: 'assets/burger.png'),
    const FoodCard(
        name: 'Cola',
        restaurant: 'Supersaver',
        price: '500',
        asset: 'assets/cola.png'),
    const FoodCard(
        name: 'French fries',
        restaurant: 'Chicken Republic',
        price: '2,000',
        asset: 'assets/fries.png'),
    const FoodCard(
        name: 'Nachos',
        restaurant: 'Spurs',
        price: '6,000',
        asset: 'assets/nachos.png'),
    const FoodCard(
        name: 'Onion Rings',
        restaurant: 'Yoruba Kitchen',
        price: '4,500',
        asset: 'assets/onion-rings.png'),
    const FoodCard(
        name: 'Pizza',
        restaurant: 'Dominoes',
        price: '6,500',
        asset: 'assets/pizza.png'),
    const FoodCard(
        name: 'Cake',
        restaurant: 'Yours Truly',
        price: '10,500',
        asset: 'assets/cake.png'),
    const FoodCard(
        name: 'Hot Dog',
        restaurant: 'Ojay',
        price: '1,500',
        asset: 'assets/hot-dog.png'),
    const FoodCard(
        name: 'Sundae',
        restaurant: 'Cold Stone',
        price: '4,000',
        asset: 'assets/sundae.png'),
  ];
}