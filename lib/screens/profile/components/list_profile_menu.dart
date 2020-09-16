import 'package:flutter/material.dart';

class ListProfileMenu extends StatelessWidget {
  const ListProfileMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProfileMenu(
          icon: Icons.shop,
          text: 'Catalogue',
        ),
        ProfileMenu(
          icon: Icons.shopping_cart,
          text: 'Your Cart',
        ),
        ProfileMenu(
          icon: Icons.favorite,
          text: 'Favourites',
        ),
        ProfileMenu(
          icon: Icons.note_add,
          text: 'Your Order',
        ),
        ProfileMenu(
          icon: Icons.settings,
          text: 'Settings',
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    this.text,
    this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
