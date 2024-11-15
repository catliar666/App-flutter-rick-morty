import 'package:flutter/material.dart';
import 'package:practica2/models/personajes_response_model.dart';
import 'package:practica2/widgets/personaje_detalles_widget.dart';
import 'package:practica2/widgets/personaje_image_widget.dart';

class PersonajeViewWidget extends StatelessWidget {
  final Personaje personaje;

  const PersonajeViewWidget({Key? key, required this.personaje})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(32, 35, 41, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PersonajeImage(imageUrl: personaje.image),
          const SizedBox(width: 15),
          Expanded(
            child: PersonajeDetails(personaje: personaje),
          ),
        ],
      ),
    );
  }
}
