import 'package:flutter/material.dart';
import 'package:loja_tenis_nike/models/product.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          height: 280,
          width: 280,
          decoration: BoxDecoration(
              color: product.productColor.withOpacity(0.5),
              shape: BoxShape.circle,
              border: Border.all(width: 55, color: product.productColor)),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: Hero(
            tag: product.imageUrl,
            child: Image.asset(
              product.imageUrl,
              height: 250,
              width: 250,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
