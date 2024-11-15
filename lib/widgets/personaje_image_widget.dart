import 'package:flutter/material.dart';

class PersonajeImage extends StatelessWidget {
  final String imageUrl;

  const PersonajeImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
        child: Image.network(
          imageUrl,
          width: 270,
          height: 270,
          fit: BoxFit.cover,
        )
        );
  }
}
