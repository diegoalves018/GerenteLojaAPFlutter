import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Juliete'),
              Text('Rua BBB'),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text('Preço produtos', style: TextStyle(fontWeight: FontWeight.w500),),
            Text('Preço Total'),
          ],
        ),
      ],
    );
  }
}
