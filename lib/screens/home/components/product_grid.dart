import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:loja_tenis_nike/models/product.dart';
import 'package:loja_tenis_nike/screens/details/details.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> lista = listProduct;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15),
        //shrinkWrap: true,
        //physics: NeverScrollableScrollPhysics(),
        itemCount: lista.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) => ProductCard(
          product: lista[index],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    var gestureDetector = GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              product: product,
            ),
          ),
        );
      },
      child: Container(
        width: 160,
        height: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  product.descount != null
                      ? Container(
                          alignment: Alignment.center,
                          child: Text(
                            '${product.descount}%',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: Colors.blue[200]),
                        )
                      : SizedBox(),
                  IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 18,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Container(
              height: 120,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: product.productColor,
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: product.productColor,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    right: 0,
                    bottom: -6,
                    child: Hero(
                      tag: product.imageUrl,
                      child: Image.asset(
                        product.imageUrl,
                        height: 150,
                        width: 150,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              product.description,
              style: TextStyle(
                  color: Colors.indigo[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$${product.price}',
              style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RatingBar(
                  initialRating: product.rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 14,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text(
                  '(${product.rating})',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
    return gestureDetector;
  }
}
