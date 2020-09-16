import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Our Product',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
        ),
        Spacer(),
        Text(
          'Sort by',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        IconButton(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.black.withOpacity(0.2),
            ),
            onPressed: () {})
      ],
    );
  }
}
