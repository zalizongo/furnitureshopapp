import 'package:flutter/material.dart';
class Badge extends StatelessWidget {
     const Badge(
      {Key? key,  required this.value,required this.color, required this.child
      } ) : super(key: key);
   final Widget child;
   final String value;
   final Color color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  // ignore: deprecated_member_use
                  color: color != null ? color : Theme.of(context).accentColor,
              ),
              constraints: const BoxConstraints(
                  maxWidth:16,
                  minHeight: 16
              ),
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 10
                ),
              ),
            )
        )
      ],
    );
  }
}
