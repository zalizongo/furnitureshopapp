import 'package:flutter/material.dart';
import 'package:nanjumia/provider/cart.dart';
import 'package:nanjumia/provider/categorisprovider.dart';
import 'package:nanjumia/screen/cartscreen.dart';
import 'package:nanjumia/widget/appdrawer.dart';
import 'package:nanjumia/widget/produitgreid.dart';
import 'package:provider/provider.dart';
enum FilterOption {
  // ignore: constant_identifier_names
  Favorites,
  // ignore: constant_identifier_names
  All
}
 class MyhomePage extends StatefulWidget {
  const MyhomePage({ Key? key }) : super(key: key);

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  int currenslect = 0;
  @override
  Widget build(BuildContext context) {
    final catego = Provider.of<ProviderCategoris>(context).categoris;
     final cart = Provider.of<Cart>(context);
    // ignore: unused_local_variable
    var  _showOnlyFavorite = false;
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
         Navigator.of(context).pushNamed(CartSreen.routName);
     }, icon: (const Icon(Icons.shopping_cart,color: Colors.red,))),
        ],
      backgroundColor: Colors.white.withOpacity(0),
      elevation: 0.0,
      ),    
      drawer:const AppDrawer() ,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  child: Row(
                    children: [Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Icon(Icons.search,size: 30,color: Colors.black,),
                    ),
                    const SizedBox(width: 10,),
                    const Text('Search',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),)
                    ],
                    ),
                  height: 55,width: 290,decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),color: Colors.white ),),
                Container(
                  child: const Center(child: Icon(Icons.settings,color: Colors.white,size: 30,)),
                  height: 55,width: 55,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.indigo),
                  )
              ],
              ),
              const SizedBox(height: 20,),
              const Text('Categoris',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 70,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: catego.length,
                  itemBuilder: (context,index)=>Stack(
                    children: [
                      Column(children: [
                        Container(
                          height: 50,
                          width: 90,
                          margin:const EdgeInsets.only(left: 5,right: 5) ,
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                currenslect = index;
                              });
                            },
                            child: Card(
                              color: index==currenslect? Colors.indigo.withOpacity(0.7):Colors.grey,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                              elevation: 3,
                              child: Center(child: Text(catego[index].name,style: const TextStyle(color: Colors.white,fontWeight:FontWeight.bold ),)),
                            ),
                          ),
                          ),
                      ],)
                    ],
                  )),
              ),
              //const SizedBox(height: 20,),
              Container(
                height: 500,
                child:  ProduitItem( _showOnlyFavorite)
              )
      
            ],
          ),
        ),
      )
    );
  }
}