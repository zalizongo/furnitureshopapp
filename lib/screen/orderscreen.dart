
import 'package:flutter/material.dart';
import 'package:nanjumia/provider/order.dart'show Oders;
import 'package:nanjumia/widget/appdrawer.dart';
import 'package:nanjumia/widget/order.dart';
import 'package:provider/provider.dart';
class OrderScreen extends StatelessWidget {
  static const routName ='/orders';
  const OrderScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderData  = Provider.of<Oders>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Order screen'),),
        //drawer:const AppDrawer() ,
        body: ListView.builder(
          itemCount: orderData.order.length,
          itemBuilder: (content,index)=> OrderItem(orderData.order[index])),
    );
  }
}