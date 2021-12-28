import 'package:flutter/material.dart';
import 'package:nanjumia/provider/cart.dart';
import 'package:nanjumia/provider/categorisprovider.dart';
import 'package:nanjumia/provider/order.dart';
import 'package:nanjumia/provider/providerproducts.dart';
import 'package:nanjumia/screen/cartscreen.dart';
import 'package:nanjumia/screen/orderscreen.dart';
import 'package:nanjumia/screen/screen.dart';
import 'package:nanjumia/widget/detaileproduct.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Products()),
        ChangeNotifierProvider(create: (_) => ProviderCategoris()),
        ChangeNotifierProvider(create: (_) => Cart()),
         ChangeNotifierProvider(create: (_) => Oders()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
       // home: const Homepae(),
       // home: const ProductsItems(),
       initialRoute: '/',
       routes: {
         '/':(context)=> const Homepae(),
         '/detailsreen':(context)=>const Detaileproduts(),
         CartSreen.routName:(ctx)=>const CartSreen(),
         OrderScreen.routName:(ctx)=>const OrderScreen (),
       },
      ),
      
    );
  }
}

