import 'package:flutter/material.dart';

class NumbersWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(text: 'Ranking', value: '3.9'),
          buildDivider(),
          buildButton(text: 'Following', value: '29'),
          buildDivider(),
          buildButton(text: 'Followers', value: '584'),
        ],
      ),
    );
  }

  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );
  Widget buildButton({
    required String text,
    required String value,
  }) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(
          vertical: 4,
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '$value',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
}
