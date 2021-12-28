import 'package:flutter/material.dart';
import 'package:nanjumia/provider/modelproduct.dart';
class Products with ChangeNotifier{
 final List<Product> _items = [
   Product(
     id: '1',
     title: 'Air Max 270',
     descriptions: 'rouge bleu vert orange',
     price: 300,
     images: 'images/Nike Air Max 27.jpeg',
     
   ),
    Product(
     id: '2',
     title: 'Air Zoum 18',
     descriptions: 'rouge bleu vert orange',
     price: 200,
     images: 'images/Nike Air Max 27.jpeg',
   ),
    Product(
     id: '3',
     title: 'Air Max 270',
     descriptions: 'rouge bleu vert orange',
     price: 300,
     images: 'images/Nike Air Max 27.jpeg',
     //couleur: Colors.transparent,
   ),
    Product(
     id: '4',
     title: 'Air Max 270',
     descriptions: 'rouge bleu vert orange',
     price: 400,
     images: 'images/Nike Air Max 27.jpeg',
     //couleur: Colors.transparent,
   ),
    Product(
     id: '5',
     title: 'Air Max 18',
     descriptions: 'rouge bleu vert orange',
     price: 300,
     images: 'images/Nike Air Max 27.jpeg',
     //couleur: Colors.transparent,
   ),
    Product(
     id: '6',
     title: 'Air Zoum 270',
     descriptions: 'rouge bleu vert orange',
     price: 300,
     images: 'images/Nike Air Max 27.jpeg',
     //couleur: Colors.transparent,
   ),
 ];
  List<Product> get items =>[..._items];
  List<Product> get favorisItems{
    return items.where((produitItem) => produitItem.isFavorite).toList();
  }
  
}