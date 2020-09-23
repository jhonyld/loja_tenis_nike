import 'package:flutter/material.dart';

class ListSizes extends StatefulWidget {
  const ListSizes({
    Key key,
  }) : super(key: key);

  @override
  _ListSizesState createState() => _ListSizesState();
}

int sizeIndex = 0;

class _ListSizesState extends State<ListSizes> {
  List<String> listSize = ["US 6", "US 7", "US 8", "US 9"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 30, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Size:',
            style: TextStyle(
                color: Colors.black.withOpacity(0.3),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 50,
            width: 300,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: listSize.length,
              itemBuilder: (context, index) {
                return SizeCard(
                  size: listSize[index],
                  index: index,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 5,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SizeCard extends StatefulWidget {
  const SizeCard({
    Key key,
    this.size,
    this.index,
  }) : super(key: key);

  final String size;
  final int index;

  @override
  _SizeCardState createState() => _SizeCardState();
}

class _SizeCardState extends State<SizeCard> {
  void changeSize(int s) {
    setState(() {
      sizeIndex = s;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => changeSize(widget.index),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          widget.size,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        height: 50,
        width: 70,
        decoration: sizeIndex == widget.index
            ? BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                color: Colors.blue[200])
            : null,
      ),
    );
  }
}
