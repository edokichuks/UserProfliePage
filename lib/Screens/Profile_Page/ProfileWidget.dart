import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  final bool isEdit;
  ProfileWidget(
      {required this.isEdit, required this.imagePath, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  buildImage() {
    final image = AssetImage(imagePath);
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(
            onTap: onClicked,
          ),
        ),
      ),
    );
  }

  buildEditIcon(Color color) {
    return buildCirle(
      color: Colors.white,
      all: 3,
      child: buildCirle(
        all: 8,
        color: color,
        child: Icon(
          isEdit ? Icons.add_a_photo : Icons.edit,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  buildCirle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          color: color,
          padding: EdgeInsets.all(all),
          child: child,
        ),
      );
}
