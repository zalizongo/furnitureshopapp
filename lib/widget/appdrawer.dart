
import 'package:flutter/material.dart';
import 'package:nanjumia/screen/orderscreen.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: const Text('HELLO FRIND'),),
            const Divider(),
            ListTile(
              onTap: (){
               Navigator.of(context).pushReplacementNamed('/');
              },
              leading: const Icon(Icons.shop),
              title: const Text('Shop'),
            ),
            const Divider(),
            ListTile(
              onTap: (){
               Navigator.of(context).pushReplacementNamed(OrderScreen.routName);
              },
              leading: const Icon(Icons.payment),
              title: const Text('Payement'),
            )
        ],
      ),
    );
  }
}