import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nanjumia/provider/providerproducts.dart';
import 'package:nanjumia/widget/produittile.dart';
import 'package:provider/provider.dart';

class ProduitItem extends StatelessWidget{
  final bool showfas;
   ProduitItem(this.showfas);
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final product = showfas? productData.favorisItems: productData.items;
    return Scaffold(
       backgroundColor: Colors.lightBlue[50],
      body: StaggeredGridView.countBuilder(
     crossAxisCount: 6,
     itemCount: product.length,
      itemBuilder: (BuildContext context, int index) =>ChangeNotifierProvider.value(value: product[index],child: const ProduitGrid() ,) ,
    staggeredTileBuilder: (int index) =>StaggeredTile.count(3, index.isEven ? 4 : 5),
     mainAxisSpacing: 4.0,
   crossAxisSpacing: 8.0,
)
    );
  }
  
}