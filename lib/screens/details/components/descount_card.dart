import 'package:flutter/material.dart';
import 'package:loja_tenis_nike/models/product.dart';

class DescountCard extends StatelessWidget {
  const DescountCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '${product.descount}%',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      height: 35,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          color: Colors.blue[200]),
    );
  }
}
