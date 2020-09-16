import 'package:flutter/material.dart';

class ListSizes extends StatelessWidget {
  const ListSizes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Size:',
            style: TextStyle(
                color: Colors.black.withOpacity(0.3),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizeCard(
            size: 'US 6',
          ),
          SizeCard(
            size: 'US 7',
            selected: true,
          ),
          SizeCard(
            size: 'US 8',
          ),
          SizeCard(
            size: 'US 9',
          ),
        ],
      ),
    );
  }
}

class SizeCard extends StatelessWidget {
  const SizeCard({
    Key key,
    this.size,
    this.selected = false,
  }) : super(key: key);

  final String size;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        size,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
      height: 50,
      width: 80,
      decoration: selected
          ? BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              color: Colors.blue[200])
          : null,
    );
  }
}
