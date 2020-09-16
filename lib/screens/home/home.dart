import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:loja_tenis_nike/screens/home/body.dart';
import 'package:loja_tenis_nike/screens/home/components/category_list.dart';
import 'package:loja_tenis_nike/screens/home/components/main_title.dart';
import 'package:loja_tenis_nike/models/product.dart';
import 'package:loja_tenis_nike/screens/home/components/product_grid.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      child: Scaffold(
        appBar: appBar(),
        body: Body(),
        bottomNavigationBar: bottomNavBar(),
      ),
    );
  }

  Padding bottomNavBar() {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            bottom: 30,
            right: 0,
            left: 0,
            child: Container(
              child: Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.lightBlue[200],
              ),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.indigo,
                  border: Border.all(color: Colors.transparent, width: 15)),
            ),
          ),
          Positioned(
            bottom: 90,
            right: -45,
            left: 0,
            child: Container(
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red[300],
                  border: Border.all(color: Colors.white, width: 1)),
            ),
          ),
          Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.shop,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 22,
              ),
              IconButton(
                  icon: Icon(Icons.favorite,
                      color: Colors.black.withOpacity(0.4)),
                  onPressed: () {}),
              Spacer(),
              IconButton(
                  icon: Icon(Icons.note_add,
                      color: Colors.black.withOpacity(0.4)),
                  onPressed: () {}),
              SizedBox(
                width: 22,
              ),
              IconButton(
                  icon:
                      Icon(Icons.person, color: Colors.black.withOpacity(0.4)),
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      leading: isDrawerOpen
          ? IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                setState(() {
                  xOffset = 0;
                  yOffset = 0;
                  scaleFactor = 1;
                  isDrawerOpen = false;
                });
              },
            )
          : IconButton(
              icon: Icon(Icons.person, color: Colors.black),
              onPressed: () {
                setState(() {
                  xOffset = 230;
                  yOffset = 150;
                  scaleFactor = 0.6;
                  isDrawerOpen = true;
                });
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
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {}),
      ],
    );
  }
}
