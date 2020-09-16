import 'package:flutter/material.dart';
import 'package:loja_tenis_nike/models/product.dart';
import 'package:loja_tenis_nike/screens/details/body.dart';

class Details extends StatelessWidget {
  final Product product;

  const Details({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(product: product),
      bottomNavigationBar: bottomNavBar(context),
    );
  }

  Container bottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 14, right: 5, left: 30),
            child: Text('\$',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
          Text(
            '${product.price}',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Container(
              width: 170,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                color: Theme.of(context).primaryColor,
              ),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 22,
                      semanticLabel: 'Icon',
                      color: Colors.indigo[600],
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    'Add to Cart',
                    style: TextStyle(
                        color: Colors.indigo[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          children: [
            TextSpan(text: 'X', style: TextStyle(color: Colors.deepPurple)),
            TextSpan(text: 'E', style: TextStyle(color: Colors.lightBlue[100])),
          ],
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ),
      ],
    );
  }
}
