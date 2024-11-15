import 'package:flutter/material.dart';
import 'package:practica2/models/personajes_response_model.dart';

class PersonajeDetails extends StatelessWidget {
  final Personaje personaje;

  const PersonajeDetails({Key? key, required this.personaje}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          personaje.name,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(
              Icons.circle,
              size: 10,
              color: personaje.status == "Alive"
                  ? Colors.green
                  : personaje.status == 'unknown'
                      ? Colors.grey
                      : Colors.red,
            ),
            const SizedBox(width: 5),
            Text('${personaje.status} - ${personaje.species}',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          'Last Known Location:',
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        Text(personaje.location.name,
            style: const TextStyle(color: Colors.white, fontSize: 15)),
        const SizedBox(height: 8),
        const Text(
          'Gender:',
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        Text(personaje.gender,
            style: const TextStyle(color: Colors.white, fontSize: 15)),
      ],
    );
  }
}
