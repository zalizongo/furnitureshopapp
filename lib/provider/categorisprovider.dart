import 'package:flutter/material.dart';
import 'package:nanjumia/model/categoris.dart';
class ProviderCategoris with ChangeNotifier  {
  final List<Categoris>_categoris = [
    Categoris(
      id:1,
      name: 'Nike'
       ),
       Categoris(
      id:2,
      name: 'Adidas'
       ),
       Categoris(
      id:3,
      name: 'Reebok'
       ),
       Categoris(
      id:4,
      name: 'Puma',
       ),
       Categoris(
      id:5,
      name: 'Balenciaga'
       ),
       Categoris(
      id:6,
      name: 'Converse'
       ),
  ];
  List<Categoris> get categoris=>[..._categoris];
}