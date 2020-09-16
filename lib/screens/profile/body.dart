import 'package:flutter/material.dart';
import 'package:loja_tenis_nike/screens/profile/components/list_profile_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(30),
          child: ListProfileMenu(),
        ),
      ],
    );
  }
}
