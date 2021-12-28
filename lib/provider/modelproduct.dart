
import 'package:flutter/cupertino.dart';
class Product with ChangeNotifier  {
  final String id;
  final String title;
  final String descriptions;
  final double price;
  final String images;
 //final Colors color;
  bool isFavorite;
  Product({
    required this.id,
    required this.title,
    required this.descriptions,
    required this.price,
    required this.images,
    this.isFavorite = false,
   // required this.color, 
  });
  void showFavoris() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}