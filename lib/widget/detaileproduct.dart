import 'package:flutter/material.dart';
import 'package:nanjumia/provider/providerproducts.dart';
import 'package:provider/provider.dart';
class Detaileproduts extends StatelessWidget {
  const Detaileproduts({ Key? key }) : super(key: key);
   static const RouteName = ('/detailsreen');
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context).items;
    var renseig = ModalRoute.of(context)!.settings.arguments as String;
    var hot = product.firstWhere((element) => element.id == renseig);
    return Scaffold(
      appBar: AppBar(),
      body:  Text(hot.title),
    );
  }
}