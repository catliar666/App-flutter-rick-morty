import 'package:flutter/material.dart';
import 'package:practica2/models/personajes_response_model.dart';
import 'package:practica2/widgets/personaje_view.dart';

class Scroll extends StatefulWidget {
  final AsyncSnapshot<List<Personaje>> snapshot;
  const Scroll({super.key, required this.snapshot});

  @override
  State<Scroll> createState() => _Scroll();
}

class _Scroll extends State<Scroll> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.snapshot.data!.length,
      itemBuilder: (context, index) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 15.0, left: 12, right: 12, bottom: 15),
          child: PersonajeViewWidget(personaje: widget.snapshot.data![index]),
        );
      },
    );
  }
}
