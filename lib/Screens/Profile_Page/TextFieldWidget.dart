import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
  final String label;
  final String text;
  final int maxLines;
  final ValueChanged<String> onChanged;
  TextFieldWidget(
      {required this.maxLines,
      required this.label,
      required this.text,
      required this.onChanged});
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          controller: controller,
          maxLines: widget.maxLines,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        )
      ],
    );
  }
}
