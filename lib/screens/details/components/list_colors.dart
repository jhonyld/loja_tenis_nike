import 'package:flutter/material.dart';

class ListColors extends StatelessWidget {
  const ListColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Avaiable color:',
            style: TextStyle(
                color: Colors.black.withOpacity(0.3),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          ),
          ColorCard(
            color: Colors.red,
          ),
          SizedBox(
            width: 15,
          ),
          ColorCard(
            color: Colors.blue,
            selected: true,
          ),
          SizedBox(
            width: 15,
          ),
          ColorCard(
            color: Colors.yellow,
          ),
          SizedBox(
            width: 15,
          ),
          ColorCard(
            color: Colors.green,
          )
        ],
      ),
    );
  }
}

class ColorCard extends StatelessWidget {
  const ColorCard({
    Key key,
    this.color,
    this.selected = false,
  }) : super(key: key);

  final Color color;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: selected ? color : color.withOpacity(0.5),
        border: Border.all(
          color: color,
          width: 7,
        ),
      ),
    );
  }
}
