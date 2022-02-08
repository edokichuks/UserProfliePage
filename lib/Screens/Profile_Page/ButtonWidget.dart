import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({required this.onClicked, required this.text});
  final String text;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        onPrimary: Colors.white,
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
