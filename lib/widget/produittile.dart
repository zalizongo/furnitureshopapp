import 'package:flutter/material.dart';
import 'package:nanjumia/provider/cart.dart';
import 'package:nanjumia/provider/modelproduct.dart';
import 'package:provider/provider.dart';
class ProduitGrid extends StatelessWidget {
  const ProduitGrid({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final product = Provider.of<Product>(context,listen: false );
     final cart = Provider.of<Cart>(context);
    return Consumer<Product>(
      builder: (context,produit,child)=>InkWell(
        onTap: (){
          Navigator.pushNamed(context, '/detailsreen',arguments: product.id);
        },
        child: Stack(
              children: [
                Card(
                  //color: Colors.teal,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  child:Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                      image: DecorationImage(image: AssetImage(product.images),
                      fit: BoxFit.cover,
                     // colorFilter: ColorFilter.linearToSrgbGamma()
                      )
                    ),
                   
                  ) 
                  ,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10,top: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                           const Text('Mens Shoe'),
                           CircleAvatar(
                             backgroundColor: Colors.white,
                             child: Center(
                               child: IconButton(
                                 onPressed: (){
                                   product.showFavoris();
                                 }, icon: Icon(product.isFavorite? Icons.favorite:Icons.favorite_border,color: Colors.red,),)
                               ),
                             radius: 15,
                           )
                        ],
                      ),
                      padding: const EdgeInsets.all(2),
                      //height: MediaQuery.of(context).size.height/9,
                      height: 50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                       margin: const EdgeInsets.only(left: 10,right: 10,bottom: 50),
                       child: Text(product.title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                       padding: const EdgeInsets.all(2),
                       height: 100,
                    ),
                    ),
                    Align(alignment: Alignment.centerLeft,
                    child: Container(
                      child: Row(
                        children: [
                          const Text('\$',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Text(product.price.toString(),style: const TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),),
                          
                        ],
                      ),
                      margin: const EdgeInsets.only(left: 10,right: 10,bottom: 60),
                      height: 80,
                      padding: const EdgeInsets.all(2),
                    ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: const EdgeInsets.only(right: 5,left: 40,bottom: 10,top: 10),
                        height: 60,
                        padding: const EdgeInsets.all(2),
                        child: IconButton(onPressed: (){
                          cart.addItem(
                            product.id, 
                            product.price, 
                            product.title);
                        }, icon:const Icon(Icons.add) )
                      ),
                    )
                  
              ],
            ),
      ),
      
    );
  }
}