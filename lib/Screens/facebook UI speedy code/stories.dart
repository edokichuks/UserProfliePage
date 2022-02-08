import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
        children: [
          Container(
            width: 100,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 100,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 100,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 100,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 100,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 100,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 100,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 100,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
          Container(
            width: 100,
            height: 160,
            color: Colors.grey[300],
            margin: EdgeInsets.only(right: 10),
          ),
        ],
      ),
    );
  }
}
