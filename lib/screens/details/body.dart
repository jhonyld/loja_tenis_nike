import 'package:flutter/material.dart';
import 'package:loja_tenis_nike/models/product.dart';
import 'package:loja_tenis_nike/screens/details/components/descount_card.dart';
import 'package:loja_tenis_nike/screens/details/components/image_card.dart';
import 'package:loja_tenis_nike/screens/details/components/list_colors.dart';
import 'package:loja_tenis_nike/screens/details/components/list_sizes.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          product.descount != null
              ? DescountCard(product: product)
              : SizedBox(
                  height: 35,
                ),
          SizedBox(
            height: 20,
          ),
          ImageCard(product: product),
          SizedBox(
            height: 25,
          ),
          Flexible(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: Row(
                      children: <Widget>[
                        Text(
                          product.description,
                          style: TextStyle(
                              color: Colors.indigo[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 36),
                        ),
                        Spacer(),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent[700],
                          size: 30,
                        ),
                        Text(
                          '(${product.rating.toString()})',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
                    child: Text(
                      'Build for natural motion, the Nike Flex shoes',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.indigo[900], fontSize: 17),
                    ),
                  ),
                  ListSizes(),
                  ListColors(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
